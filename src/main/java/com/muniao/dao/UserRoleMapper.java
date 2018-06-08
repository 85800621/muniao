package com.muniao.dao;



import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRoleMapper {
    void userRole(@Param("roleId") Integer roleId,@Param("userId") Integer userId);
}