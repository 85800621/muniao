package com.muniao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by XiaBing on 2018/6/11 (18:01)
 */

@Controller
@RequestMapping("/Room")
public class AddRoomTestController {

    @RequestMapping("/Submit_Step1")
    public String step1(String postData){

        System.out.println("+++++++++++++++" + postData);

        return "/index";
    }

}
