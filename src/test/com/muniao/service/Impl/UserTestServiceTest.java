package com.muniao.service.Impl;

import com.muniao.entity.UserTest;
import com.muniao.service.UserTestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * 夏冰 2018-06-06 14:30
 * 环境配置测试类
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserTestServiceTest {

    @Resource
    private UserTestService userTestService;
    @Test
    public void getUserTestById() throws Exception {

        UserTest userTest = userTestService.getUserTestById(3);
        String name = userTest.getName();
        System.out.println(name);

    }

}