package com.muniao.controller;

import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import com.muniao.service.OrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
    @Autowired
    private OrderDetailService orderDetailService;

    @RequestMapping(value = "lodgerorder/{buyerId}")
    public String selectBuyerOrders(@PathVariable("buyerId")int id ,Model model){
        List <com.muniao.entity.Order> orders=orderService.selectBuyerOrders(id);
        model.addAttribute("orders",orders);

        return "/lodgerorder";
    }

    @RequestMapping(value = "orderdetail/{orderId}")
    public String selectOrderDetail(@PathVariable("orderId")int id , Model model){
        OrderDetail orderDetail=orderDetailService.selectOrderDetail(id);
        model.addAttribute("orderDetail",orderDetail);
        return "/orderdetail";
    }
}
