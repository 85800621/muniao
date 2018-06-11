package com.muniao.controller;

import com.muniao.entity.JsonResult;
import com.muniao.entity.User;
import com.muniao.service.Impl.LoginService;
import com.muniao.service.Impl.RegisterService;
import com.muniao.utils.UtilsCode;
import com.muniao.utils.UtilsPicCode;
import com.muniao.utils.UtilsTools;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * 登陆controller
 * 林浩 20180605
 */
@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private RegisterService registerService;

    String codeStr = null ;

    /**
     * 普通登陆（用户名密码登陆）
     * @param tel
     * @param password
     * @return
     */
    @RequestMapping("/checkLogin")
    @ResponseBody
    public Object login(String tel,String password,Boolean rememberMe,HttpSession session){
      //  rememberMe = true ;
        System.out.println(tel+"--------Controller--------"+password+"------------"+rememberMe);
        JsonResult jsonResult = new JsonResult() ;
        try{
            loginService.login(tel,password,rememberMe);
            jsonResult.setCode(1);
            User user = loginService.checkTelePhone(tel);
            session.setAttribute("user",user);
            return jsonResult;
        }catch (UnknownAccountException e){
            e.printStackTrace();
            jsonResult.setCode(-1);
            return jsonResult ;
        }catch (IncorrectCredentialsException e){
            e.printStackTrace();
            jsonResult.setCode(-3);
            return jsonResult;
        }

    }

    /**
     * 快捷登陆(手机号码+图形验证码+手机短信验证码)
     * @param Tel_M
     * @param MsgCode
     * @param ValidCode
     * @param session
     * @return
     */
    @RequestMapping("/CheckLoginFast")
    @ResponseBody
    public Object login(String Tel_M, String MsgCode,String ValidCode,HttpSession session){

        System.out.println(Tel_M+"--------Controller--------"+ValidCode);
        JsonResult jsonResult = new JsonResult();
        System.out.println("msgcode---"+MsgCode);
        String  codeJsp = (String) session.getAttribute("code");
        if(!codeStr.equals(MsgCode)||MsgCode.equals("")){
            jsonResult.setCode(-2);
            return jsonResult;
        }else if(!codeJsp.equals(ValidCode)||ValidCode.equals("")) {
            jsonResult.setCode(-1);
            return jsonResult;
        }else {
            User user = loginService.checkTelePhone(Tel_M);
            if(null != user){
                session.setAttribute("user",user);
            }else{
                User user1 = new User();
                user1.setTelephone(Tel_M);
                registerService.registerUserNoPwd(user);
                session.setAttribute("user",user1);
            }
            jsonResult.setCode(1);
            return jsonResult;
        }

    }


    /**
     * 密码重置  林浩
     * @param mobile
     * @param imgcode
     * @param vaildatecode
     * @param password
     * @param newpassword
     * @return
     */
    @ResponseBody
    @RequestMapping("/reSettPassword")
    public Object retPassword(String mobile,String imgcode,String vaildatecode,String password,String newpassword,HttpSession session){
        JsonResult jsonResult = new JsonResult();
        String  codeJsp = (String) session.getAttribute("code");
        if(!codeStr.equals(vaildatecode)||vaildatecode.equals("")){
            jsonResult.setCode(-2);
            return jsonResult;
        }else if(!codeJsp.equals(imgcode)||imgcode.equals("")) {
            jsonResult.setCode(-1);
            return jsonResult;
        }else {
            User user = loginService.checkTelePhone(mobile);
            loginService.reSetPassword(password,mobile,user.getPasswordSalt());
            jsonResult.setCode(1);
            return jsonResult;
        }
    }

    /**
     * 获取短信验证码
     * @param tel
     * @return
     */
    @RequestMapping("/getCode")
    @ResponseBody
    public Object checkCode(String tel){
        System.out.println("---------------");
        JsonResult jsonResult = new JsonResult();
        try{
            codeStr = UtilsPicCode.getCode();
            UtilsCode.sendCode(codeStr, tel);
            jsonResult.setCode(3);

            return jsonResult;
        }catch (Exception e){
            e.printStackTrace();
        }
        jsonResult.setCode(4);
        return jsonResult;
    }


    /**
     * 获取图片验证码
     * @param request
     * @param response
     * @param session
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping("/pic")
    public void getPic(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {

        System.out.println("===============controller/pic=================");

        BufferedImage bufferedImg=new BufferedImage(100,35,BufferedImage.TYPE_INT_RGB);
        Graphics graphics=bufferedImg.getGraphics();
        graphics.setColor(Color.WHITE);
        graphics.fillRect(0,0, 100, 55);

        graphics.setColor(Color.BLACK);
        Random random=new Random();
        int lengthCode= UtilsPicCode.PIC_CODE.length();
        char[] charcode=new char[4];
        for(int i=0;i<4;i++) {
            int index=random.nextInt(lengthCode);
            char a= UtilsPicCode.PIC_CODE.charAt(index);
            charcode[i]=a;
            graphics.setColor(new Color(random.nextInt(100),random.nextInt(200),random.nextInt(100)));
            graphics.drawString(a+"",30*i,25);
        }

        session.setAttribute("code",new String(charcode));

        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(response.getOutputStream());
        encoder.encode(bufferedImg);
    }


    /**
     * 登陆后重新设置新的密码
     * @param OldPwd
     * @param NewPwd
     * @param CNewPwd
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/updatePassword")
    public Object updatePassword(String OldPwd,String NewPwd,String CNewPwd,HttpSession session){
        JsonResult jsonResult = new JsonResult();
        System.out.println("----------------updatePassword----------------");
        try {
            User user = (User) session.getAttribute("user");
            String telephone = user.getTelephone();
            loginService.updatePassword(NewPwd,OldPwd,telephone);
            jsonResult.setCode(1);
            return jsonResult;
        }catch (Exception e){
            e.printStackTrace();
            jsonResult.setCode(-2);
            return jsonResult;
        }
    }

    @RequestMapping("/setPersonInfo")
    @ResponseBody
    public Object setPersonInfo(User user,HttpServletRequest request){



        return  null;
    }




}
