package com.muniao.controller;

import com.muniao.entity.JsonResult;
import com.muniao.entity.User;
import com.muniao.service.Impl.LoginService;
import com.muniao.service.Impl.RegisterService;
import com.muniao.utils.UtilsCode;
import com.muniao.utils.UtilsPicCode;
import com.muniao.utils.UtilsTools;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
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
@RequestMapping("/login")
public class LoginController {

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
    public Object login(String tel,String password){
        System.out.println(tel+"--------Controller--------"+password);
        JsonResult jsonResult = null ;
        try{
            loginService.login(tel,password);
            jsonResult= UtilsTools.returnJsonResult(1, "登陆成功");
            return jsonResult;
        }catch (UnknownAccountException e){
            e.printStackTrace();
            jsonResult = UtilsTools.returnJsonResult(-1,"账户不存在");
            return jsonResult ;
        }catch (IncorrectCredentialsException e){
            e.printStackTrace();
            jsonResult = UtilsTools.returnJsonResult(-3,"密码错误");
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
        JsonResult jsonResult = null ;
        System.out.println("msgcode---"+MsgCode);
        String  codeJsp = (String) session.getAttribute("code");
        if(!codeStr.equals(MsgCode)||MsgCode.equals("")){
            jsonResult = UtilsTools.returnJsonResult(-2,"短信验证码错误");
            return jsonResult;
        }else if(!codeJsp.equals(ValidCode)||ValidCode.equals("")) {
            jsonResult = UtilsTools.returnJsonResult(-1,"图形验证码错误");
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
            jsonResult = UtilsTools.returnJsonResult(1,"登陆成功");
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
            jsonResult.setResult("验证码已发送");
            return jsonResult;
        }catch (Exception e){
            e.printStackTrace();
        }
        jsonResult.setCode(4);
        jsonResult.setResult("验证码发送失败");
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

        System.out.println("================================");

        BufferedImage bufferedImg=new BufferedImage(100,35,BufferedImage.TYPE_INT_RGB);
        Graphics graphics=bufferedImg.getGraphics();
        graphics.setColor(Color.WHITE);
        graphics.fillRect(0,0, 100, 37);

        graphics.setColor(Color.BLACK);
        Random random=new Random();
        int lengthCode= UtilsPicCode.PIC_CODE.length();
        char[] charcode=new char[4];
        for(int i=0;i<4;i++) {
            int index=random.nextInt(lengthCode);
            char a= UtilsPicCode.PIC_CODE.charAt(index);
            charcode[i]=a;
            graphics.setColor(new Color(random.nextInt(100),random.nextInt(200),random.nextInt(100)));
            graphics.drawString(a+"",20*i,20);
        }


        session.setAttribute("code",new String(charcode));

        ImageIO.write(bufferedImg,"png",response.getOutputStream());

    }


}
