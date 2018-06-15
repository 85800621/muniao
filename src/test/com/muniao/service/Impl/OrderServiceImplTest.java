package com.muniao.service.Impl;

import com.muniao.entity.CheckInCustomer;
import com.muniao.entity.Order;
import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import com.muniao.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
    @Resource
    private OrderDetailService orderDetailService;
    @Test
    public void test1(){

        System.out.println(orderService.selectBuyerOrders(2));
        List<com.muniao.entity.Order> orders=orderService.selectBuyerOrders(2);
        for(com.muniao.entity.Order order:orders ){

            OrderDetail orderDetail=order.getOrderDetail();
            System.out.println(orderDetail.getCheckInTime()+"+"+orderDetail.getDepartureTime()
            +"+"+orderDetail.getRoom().getTitle());
            List<CheckInCustomer> checkInCustomers=orderDetail.getCheckInCustomers();
            for (CheckInCustomer cic :checkInCustomers){
                System.out.println(cic.getCheckInCustomerId());
                System.out.println(cic.getCustomerName());
                System.out.println(cic.getCustomerIDCard());
            }
        }
    }

    @Test
    public void test2(){
        OrderDetail orderDetails=orderDetailService.selectOrderDetail(1);
        System.out.println(orderDetails);
    }

    @Test
    public void test3(){
        Calendar c =Calendar.getInstance();
        Date d=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String s=sdf.format(d).toString();
        System.out.println(s);
        int a =c.get(Calendar.DAY_OF_WEEK);
        System.out.println(a);
        int b =c.get(Calendar.DAY_OF_MONTH);
        System.out.println(b);
        c.getTime();
        System.out.println(sdf.format(c.getTime()));
        c.set(2018,5,13);
        int h=c.get(Calendar.DAY_OF_WEEK);
        System.out.println(h);
    }

    @Test
    public void test4(){
        List <Order> orders = orderService.selectWaitCommitOrders("3", 2);
        System.out.println(orders);
        for (Order or:orders
             ) {
            or.getOrderStatus();
            List <CheckInCustomer> checkInCustomers = or.getOrderDetail().getCheckInCustomers();
            for (CheckInCustomer check: checkInCustomers
                 ) {
                String customerName = check.getCustomerName();
                System.out.println(customerName);
            }
            System.out.println(or.getOrderStatus());
        }
    }
    @Test
    public void test5(){
        List<Order> orders=orderService.selectAllOrders(2);
        System.out.println(orders);
        for (Order or:
             orders) {

            System.out.println(or.getOrderDetail()
                    .getRoom().getTitle());
        }
    }
    @Test
    public void test6(){
        Order order=orderService.selectOneOrder(1);
        System.out.println(order);
        String title = order.getOrderDetail().getRoom().getTitle();
        System.out.println(title);
    }
}
