package com.muniao.controller;

import com.muniao.entity.JsonResult;
import com.muniao.service.LoginService;
import com.muniao.utils.UtilsTools;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 登陆controller
 * 林浩 20180605
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    /**
     * 快捷登陆（用户名密码登陆）
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


}
