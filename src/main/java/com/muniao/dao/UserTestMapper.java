package com.muniao.dao;

import com.muniao.entity.UserTest;
import org.springframework.stereotype.Repository;

/**
 * 夏冰 2018-06-06 14:30
 * 环境配置测试类
 */

@Repository
public interface UserTestMapper {

    UserTest selectById(int id);
}
