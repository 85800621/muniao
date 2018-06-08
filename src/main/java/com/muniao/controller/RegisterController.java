package com.muniao.controller;


import com.muniao.entity.JsonResult;
import com.muniao.entity.User;
import com.muniao.service.PreRegisterService;
import com.muniao.service.RegisterService;
import com.muniao.utils.UtilsCode;
import com.muniao.utils.UtilsPicCode;
import com.muniao.utils.UtilsTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;


/**
 * 注册使用controller
 * 林浩 20180606/Regist/RegistSubmit
 */
@SessionAttributes("userTel")
@Controller
@RequestMapping("/Regist")
public class RegisterController {



    @Autowired
    private PreRegisterService preRegisterService;

    @Autowired
    private RegisterService registerService;

    String codeStr = null ;

    @RequestMapping("/RegistSubmit")
    @ResponseBody
    public Object userRegister(String tel_M,String email,String userName,String pwd, String userType ){


        System.out.println("---------------------------");
        JsonResult jsonResult = new JsonResult();
        User user = preRegisterService.checkUserByPhone(tel_M);
        if(user!=null){
            jsonResult = UtilsTools.returnJsonResult(UtilsTools.FAIL,UtilsTools.FAIL_STR);
            return jsonResult;
        }else {
            User user1 = new User();
            user1.setTelephone(tel_M);
            user1.setPassword(pwd);
            user1.setEmail(email);
            user1.setUserName(userName);
            Integer integer = registerService.registerUser(user1);
            System.out.println("userType============="+userType);
            if(userType.equals("1")){
                registerService.insertRoleUser(2,integer);
            }else {
                registerService.insertRoleUser(1,integer);
            }
            jsonResult = UtilsTools.returnJsonResult(UtilsTools.SUCESS_REGISTER_CODE,UtilsTools.SUCESS_REGISTER);
            return jsonResult;
        }

    }

    @RequestMapping("/reg")
    @ResponseBody
    public Object  register(String usertel, String code,String codePic, HttpSession session){


        session.setAttribute("user",usertel);
        String  code1 = (String) session.getAttribute("code");
        System.out.println("code---"+code1);
        if(!codeStr.equals(code)||code.equals("")){
            JsonResult jsonResult = UtilsTools.returnJsonResult(UtilsTools.ERROR_SEND_CODE,UtilsTools.RRROR_SEND);
            return jsonResult;
       }else if(!code1.equals(codePic)||codePic.equals("")) {
            JsonResult jsonResult = UtilsTools.returnJsonResult(UtilsTools.ERROR_PIC_CODE, UtilsTools.ERROR_PIC);
            return jsonResult;
        }else {
            JsonResult jsonResult = UtilsTools.returnJsonResult(UtilsTools.SUCESS_REGISTER_CODE, UtilsTools.SUCESS_REGISTER);
            return jsonResult;
        }
    }





}
