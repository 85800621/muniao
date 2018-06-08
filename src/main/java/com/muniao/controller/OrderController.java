package com.muniao.controller;

import com.muniao.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 17:23
 * @Name com.muniao.controller
 * @Description:
 **/
@Controller
@RequestMapping("/")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "lodgerorder/{buyerId}")
    public String selectBuyerOrders(@PathVariable("buyerId")int id ,Model model){
        List <com.muniao.entity.Order> orders=orderService.selectBuyerOrders(id);
        model.addAttribute("orders",orders);

        return "/lodgerorder";
    }
}
