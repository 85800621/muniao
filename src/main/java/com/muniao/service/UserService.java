package com.muniao.service;

import com.muniao.entity.User;

/**
 * 史国纲 2018/6/12
 */

public interface UserService {
    User selectByUserId(int userId);

    void payment(String method,String name,String account,String bank,String telephone);
}
