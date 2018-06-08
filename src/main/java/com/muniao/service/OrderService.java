package com.muniao.service;

import com.muniao.entity.Order;

import java.util.List;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 16:16
 *@类名:  OrderService
 *@Description:生成orderService接口
 *
 */

public interface OrderService {
    /**
     * @Description: 接口方法
     * @Param:  id
     * @return: List<Order>
     * @Author: Scot
     * @Date: 2018/6/8
     */
    List<Order> selectBuyerOrders(int id);
    /**
     * @Description: 接口方法
     * @Param:  id
     * @return:  List<Order>
     * @Author: Scot
     * @Date: 2018/6/8 16:40
     */
    List<Order> selectSellerOrders(int id);
}
