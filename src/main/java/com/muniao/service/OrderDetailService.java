package com.muniao.service;

import com.muniao.entity.OrderDetail;

import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 20:32
 * @Name com.muniao.service
 * @Description: orderDetailservice
 **/
public interface OrderDetailService {
    OrderDetail selectOrderDetail(int orderId);

    void insertOneOrderDetail(OrderDetail orderDetail);
}
