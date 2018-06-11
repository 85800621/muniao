package com.muniao.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/")
@Controller
public class UserPreController {


    @RequestMapping(value = "/forgetPassword")
    public String forgetPass(){
        return "forgetpass";
    }


    @RequestMapping("/password")
    public String password(){
        return "password";
    }

    @RequestMapping("/lodgerinfo")
    public String lodgerinfo(){
        return "/lodgerinfo";
    }
}
