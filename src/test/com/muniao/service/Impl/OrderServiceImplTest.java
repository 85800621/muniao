package com.muniao.service.Impl;

import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 17:12
 * @Name com.muniao.service.Impl
 * @Description: 测试订单查询
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OrderServiceImplTest {
    @Resource
    private OrderService orderService;
    @Test
    public void test1(){

        System.out.println(orderService.selectBuyerOrders(2));
        List<com.muniao.entity.Order> orders=orderService.selectBuyerOrders(2);
        for(com.muniao.entity.Order order:orders ){

            OrderDetail orderDetail=order.getOrderDetail();
            System.out.println(orderDetail.getCheckInTime()+"+"+orderDetail.getDepartureTime()
            +"+"+orderDetail.getRoom().getRoomName());
        }
    }

}
