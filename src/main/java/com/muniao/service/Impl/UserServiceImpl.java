package com.muniao.service.Impl;

import com.muniao.dao.UserMapper;
import com.muniao.entity.User;
import com.muniao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 史国纲 2018/6/12
 */
@Service
@Transactional
public class UserServiceImpl implements UserService{
    @Resource private UserMapper userDao;
    @Override
    public User selectByUserId(int userId) {
        return userDao.selectByUserId(userId);
    }

    @Autowired
    private UserMapper userMapper;

    public void payment(String method,String name,String account,String bank,String telephone){
        userMapper.payment(method,name,account,bank,telephone);
    }
}
