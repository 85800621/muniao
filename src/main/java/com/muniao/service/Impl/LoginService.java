package com.muniao.service.Impl;

import com.muniao.dao.UserMapper;
import com.muniao.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 登陆service
 * 林浩20180606
 */
@Service
public class LoginService {

    @Autowired
    private UserMapper userDao;

    public void login(String phone,String password,Boolean rememberMe){

        System.out.println(phone+"--------service--------"+password+"----------"+rememberMe);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(phone, password,rememberMe);

        subject.login(token);
    }

    public User checkTelePhone(String phone){
        return userDao.checkTelephone(phone);
    }

    public void reSetPassword(String password,String phone,String passwordsalt){
        SimpleHash simpleHash = new SimpleHash("MD5", password, passwordsalt);
        userDao.updatePassword(simpleHash.toString(),phone);
    }

    public void updatePassword(String password,String oldPassword,String phone){
        User user = userDao.checkTelephone(phone);
        SimpleHash passwordHash = new SimpleHash("MD5", oldPassword, user.getPasswordSalt());
        if(user.getPassword().equals(passwordHash.toString())){
            SimpleHash newPassword = new SimpleHash("MD5", password, user.getPasswordSalt());
            userDao.updatePassword(newPassword.toString(),phone);
        }
    }

    public void setPersonInfo(User user){
        userDao.insertSelective(user);
    }
}
