package com.muniao.service;


import com.muniao.dao.UserMapper;
import com.muniao.dao.UserRoleMapper;
import com.muniao.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 注册用service
 * 林浩20180607
 */
@Service
public class RegisterService {



    @Autowired
    private UserMapper tbUserMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;


    /**
     * 插入用户数据
     * @param user
     * @return
     */
    public Integer registerUser(User user){
        tbUserMapper.insertSelective(user);
        return user.getUserId();
    }

    /**
     * 插入用户角色中间表
     * @param roleId
     * @param userId
     */
    public void insertRoleUser(Integer roleId,Integer userId){
        userRoleMapper.userRole(roleId,userId);
    }
}
