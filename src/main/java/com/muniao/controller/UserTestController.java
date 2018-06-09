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

    @RequestMapping(value = "/index")
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

    @RequestMapping(value = "/lodgerorder")
    public String logderorder(){
        return "/lodgerorder";
    }

    @RequestMapping(value = "/landlordorder")
    public String landlordorder(){
        return "/landlordorder";
    }

    @RequestMapping(value = "/orderdetail")
    public String orderdetail(){
        return "/orderdetail";
    }

    @RequestMapping(value = "/room")
    public String room(){
        return "/room";
    }

    @RequestMapping(value = "/roommanagement")
    public String roommanagement(){
        return "/roommanagement";
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

    @RequestMapping(value = "/pay")
    public String pay(){
        return "/pay";
    }

    @RequestMapping(value = "/forgetpass")
    public String forgetpass(){
        return "/forgetpass";
    }

    @RequestMapping(value = "/preadd")
    public String preadd(){
        return "/preadd";
    }

    @RequestMapping(value = "/step1")
    public String step1(){
        return "/step1";
    }

    @RequestMapping(value = "/step2")
    public String step2(){
        return "/step2";
    }
}
