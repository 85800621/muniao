package com.muniao.controller;

import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import com.muniao.service.OrderService;
import jdk.net.SocketFlow;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
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
    /**
     * @Description: 通过买家id查询定单
     * @Param:  buyerId model
     * @return:  String
     * @Author: Scot
     * @Date: 2018/6/12 15:21
     */
    @RequestMapping(value = "lodgerorder/{buyerId}")
    public String selectBuyerOrders(@PathVariable("buyerId")int id ,Model model){
        List <com.muniao.entity.Order> orders=orderService.selectBuyerOrders(id);
        model.addAttribute("orders",orders);

        return "/lodgerorder";
    }
    /**
     * @Description: 通过订单编号查询订单详情
     * @Param:  orderId model
     * @return:  String
     * @Author: Scot
     * @Date: 2018/6/12 15:22
     */
    @RequestMapping(value = "orderdetail/{orderId}")
    public String selectOrderDetail(@PathVariable("orderId")int id , Model model){
        OrderDetail orderDetail=orderDetailService.selectOrderDetail(id);
        model.addAttribute("orderDetail",orderDetail);
        return "/orderdetail";
    }

    /**
     * 订单状态:
     * 1 完成
     * 2 已付款
     * 3 待入住
     * 4 未付款
     * 5 退款
     * 6 等待确认
     * 7 已取消订单
     * */
    @RequestMapping(value = "landlordcommit/{orderId}/{orderStatus}/{buyerId}")
    public String commitOrder(@PathVariable("orderId")int orderId,
                              @PathVariable("orderStatus")String orderStatus,
                              @PathVariable("buyerId")int buyerId){

        orderStatus=orderStatus.substring(0,1);
        orderService.changeOrderStatus(orderStatus,orderId);
        return "/lodegerorder";
    }
        /**
         * @Description: 通过买家id 查询未完成订单
         * @Param:  buyerId model
         * @return:  String
         * @Author: Scot
         * @Date: 2018/6/12 15:24
         */
    @RequestMapping(value = "waitcommitorder/{buyerId}")
    public String waitCommitOrder(@PathVariable("buyerId")int buyerId , Model model){
        List<com.muniao.entity.Order> orders=orderService.selectWaitCommitOrders("6",buyerId);
        model.addAttribute("orders",orders);
        System.out.println(orders);

        return "/lodgerorder";
    }
}
