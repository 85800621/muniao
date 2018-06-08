package com.muniao.service;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

/**
 * 登陆service
 * 林浩20180606
 */
@Service
public class LoginService {

    public void login(String phone,String password){
        System.out.println(phone+"--------service--------"+password);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(phone, password);
        subject.login(token);
    }
}
