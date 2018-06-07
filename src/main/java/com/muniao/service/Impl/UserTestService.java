package com.muniao.service.Impl;

import com.muniao.dao.UserTestMapper;
import com.muniao.entity.UserTest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 夏冰 2018-06-06 14:30
 * 环境配置测试类
 */

@Service
@Transactional
public class UserTestService implements com.muniao.service.UserTestService {

    @Resource
    private UserTestMapper UserTestDAO;

    @Override
    public UserTest getUserTestById(int id) {
        UserTest userTest = UserTestDAO.selectById(id);
        return userTest;
    }
}
