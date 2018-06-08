package com.muniao.controller;

import com.muniao.entity.UserTest;
import com.muniao.service.UserTestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 夏冰 2018-06-06 14:30
 * 环境配置测试类
 */
//@SessionAttributes("currentUser")
@Controller
@RequestMapping("/")
public class UserTestController {

    @Resource
    private UserTestService userTestService;

    @RequestMapping(value = "/")
    public String index(){
        return "/index";
    }


    @RequestMapping(value = "/register")
    public String register(){
        return "/register";
    }

    @RequestMapping(value = "/features")
    public String features(){
        return "/features";
    }


    @RequestMapping(value = "/getInfo")
    public String info(String id,Model model){

        int i = Integer.parseInt(id);
        UserTest userTest = userTestService.getUserTestById(i);
        model.addAttribute("userTest",userTest);

        return "/info";
    }
    @RequestMapping(value = "booking")
    public String booking(){
        return "/booking";
    }
}
