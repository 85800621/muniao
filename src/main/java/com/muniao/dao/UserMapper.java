package com.muniao.dao;

import com.muniao.entity.User;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7 14:45
 */
@Repository
public interface UserMapper {
    User selectByUserId(int userId);
}
