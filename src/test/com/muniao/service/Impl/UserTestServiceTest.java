package com.muniao.service.Impl;

import com.muniao.entity.User;
import com.muniao.entity.UserTest;
import com.muniao.service.RegisterService;
import com.muniao.service.TestService;
import com.muniao.service.UserTestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * 夏冰 2018-06-06 14:30
 * 环境配置测试类
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserTestServiceTest {

    @Resource
    private UserTestService userTestService;

    @Autowired
    private RegisterService registerService;

    @Autowired
    private TestService testService;


    @Test
    public void getUserTestById() throws Exception {

        UserTest userTest = userTestService.getUserTestById(3);
        String name = userTest.getName();
        System.out.println(name);

    }

    @Test
    public void testCase(){
        List<String> strings = testService.queryByPhone("18792074922");
       System.out.println(strings.get(0));
    }

    @Test
    public void testCase1(){
        List<String> strings = testService.queryByPhone1("163@163.com");
        System.out.println(strings.get(0));
    }

    @Test
    public void testCase2(){
        User user = new User();
        user.setUserName("maozedong");
        user.setEmail("maozedong@qq.com");
        user.setPassword("123123");
//        testService.insert(user);

        Integer integer = registerService.registerUser(user);
        System.out.println(integer);
    }

    @Test
    public void testCase3(){
        testService.insertRoleUser(2,29);

    }


}