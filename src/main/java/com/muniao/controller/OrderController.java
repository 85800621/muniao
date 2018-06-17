package com.muniao.controller;

import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import com.muniao.service.OrderService;
import com.sun.org.apache.xpath.internal.SourceTree;
import jdk.net.SocketFlow;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.executor.ReuseExecutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
//    @RequestMapping(value = "lodgerorder/{buyerId}")
//    public String selectBuyerOrders(@PathVariable("buyerId")int id ,Model model){
//        List <com.muniao.entity.Order> orders=orderService.selectBuyerOrders(id);
//        model.addAttribute("orders",orders);
//
//        return "/lodgerorder";
//    }
    /**
     * @Description: 通过订单编号查询订单详情
     * @Param:  orderId model
     * @return:  String
     * @Author: Scot
     * @Date: 2018/6/12 15:22
     */
//    @RequestMapping(value = "orderdetail/{orderId}")
//    public String selectOrderDetail(@PathVariable("orderId")int id , Model model){
//        OrderDetail orderDetail=orderDetailService.selectOrderDetail(id);
//        model.addAttribute("orderDetail",orderDetail);
//        return "/orderdetail";
//    }

    /**
     * 订单状态:
     * 1 全部
     * 2 已付款
     * 3 待入住
     * 4 未付款
     * 5 退款
     * 6 等待确认
     * 7 已取消订单
     * 8 完成
     * 9
     * */
    @RequestMapping(value = "landlordcommit/{orderId}/{orderStatus}/{buyerId}")
    public String commitOrder(@PathVariable("orderId")int orderId,
                              @PathVariable("orderStatus")String orderStatus,
                              @PathVariable("buyerId")int buyerId){
        if(orderStatus.equals("4-6")) {

            orderService.changeOrderStatus("4", orderId);
        }else if(orderStatus.equals("2-6")){
            orderService.changeOrderStatus("3",orderId);
        }else if(orderStatus.equals("5-6")){
            orderService.changeOrderStatus("7",orderId);
        }
        return "/lodegerorder";
    }
        /**
         * @Description: 通过用户id 查询未完成订单
         * @Param:  buyerId model
         * @return:  String
         * @Author: Scot
         * @Date: 2018/6/12 15:24
         */
    @RequestMapping(value = "waitcommitorder/{type}/{buyerId}")
    public String waitCommitOrder(@PathVariable("type")String type,@PathVariable("buyerId")int buyerId , Model model){
        List<com.muniao.entity.Order> orders=orderService.selectWaitCommitOrders(type,buyerId);
        model.addAttribute("orders",orders);
        System.out.println(orders);

        return "/lodgerorder";
    }

    /**
     * 查找当前用户下所有订单
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "lodgerorder/{currentUserId}")
    public String selectAllOrders(@PathVariable("currentUserId")int id ,Model model){
        List <com.muniao.entity.Order> orders=orderService.selectAllOrders(id);
        model.addAttribute("orders",orders);

        return "/lodgerorder";
    }

    /**
     * 查找当前用户下某个订单详情
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "orderdetail/{orderId}")
    public String selectOrderDetail(@PathVariable("orderId")int id , Model model){
        com.muniao.entity.Order order=orderService.selectOneOrder(id);
        model.addAttribute("order",order);
        return "/orderDetail";
    }

    @RequestMapping(value = "refund/{orderId}")
    public String refundCal(@PathVariable("orderId") int  orderId,Model model){
        Calendar cal=Calendar.getInstance();
        com.muniao.entity.Order order=orderService.selectOneOrder(orderId);
        Date date2=order.getOrderDetail().getCheckInTime();
        Date date3=order.getOrderDetail().getDepartureTime();
        SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd");
        try {
            Date formatDate1=sdf.parse(new Date(System.currentTimeMillis()).toString());
            Date formatDate2=sdf.parse(date2.toString());
            Date formatDate3=sdf.parse(date3.toString());
            int result=formatDate1.compareTo(formatDate2);
            int result1=formatDate1.compareTo(formatDate3);
            Double refundMoney = Double.valueOf(0);

            if(formatDate2.before(formatDate1)&&formatDate3.after(formatDate1)){
                    System.out.println("入住后退款");
                    int days1 = (int )(formatDate1.getTime() - formatDate2.getTime()) / (1000 * 24 * 60 * 60);
                    Double actullyPay=order.getOrderDetail().getRoom().getPrice()*days1;
                    refundMoney = order.getOrderDetail().getTotalPrice()-actullyPay;
                    System.out.println("应退金额:"+refundMoney);
                    orderService.changeOrderStatus("5", orderId);
            }else if (formatDate2.after(formatDate1)){
                switch (order.getOrderStatus()){
                    case "4-6":
                        System.out.println("无须退款");
                        orderService.changeOrderStatus("7",orderId);
                        break;
                    case "4":
                        System.out.println("无须退款");
                        orderService.changeOrderStatus("7",orderId);
                        break;
                    case "2-6":
                        refundMoney=order.getOrderDetail().getTotalPrice();
                        System.out.println("应退金额"+refundMoney);
                        orderService.changeOrderStatus("5",orderId);
                        break;
                    case "2":
                        refundMoney=order.getOrderDetail().getTotalPrice();
                        System.out.println("应退金额"+refundMoney);
                        orderService.changeOrderStatus("5",orderId);
                        break;
                    case "3":
                        refundMoney=order.getOrderDetail().getTotalPrice();
                        System.out.println("应退金额"+refundMoney);
                        orderService.changeOrderStatus("5",orderId);
                        break;
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }





        return "/lodgerorder";
    }
}
