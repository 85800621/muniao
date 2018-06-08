package com.muniao.service;

import com.muniao.dao.UserMapper;
import com.muniao.dao.UserRoleMapper;
import com.muniao.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    public List<String> queryByPhone(String phone){
        return userMapper.queryRolesByPhone(phone);
    }

    public List<String> queryByPhone1(String email){
        return userMapper.queryRolesByEmail(email);
    }

    public void insert(User user){
        userMapper.insertSelective(user);
    }

    public void insertRoleUser(Integer roleId,Integer userId){
        userRoleMapper.userRole(roleId,userId);
    }
}
