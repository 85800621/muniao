package com.muniao.service.Impl;

import com.muniao.dao.UserMapper;
import com.muniao.dao.UserRoleMapper;
import com.muniao.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 登陆钱验证
 * 林浩20180607
 */
@Service
public class PreRegisterService {

    @Autowired
    private UserMapper userDao;


    /**
     * 检查电话号码是否已经被使用
     * @param phone
     * @return
     */
    public User checkUserByPhone(String phone){
        User user = userDao.checkTelephone(phone);
        return user;
    }
}
