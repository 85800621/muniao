package com.muniao.dao;

import com.muniao.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 史国纲 2018/6/7 14:45
 */
@Repository
public interface UserMapper {
    User selectByUserId(int userId);

    List<String> queryRolesByPhone(String phone);

    User checkTelephone(String phone);

    User checkEmail(String email);

    List<String> queryRolesByEmail(String email);

    void insertSelective(User user);

    void updatePassword(@Param("password") String password,@Param("telephone")String telephone);

    void payment(@Param("method") String method,@Param("name") String name,@Param("account") String account ,@Param("bank") String bank,@Param("telephone") String telephone);
}
