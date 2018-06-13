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
    /**
     * @Description:
     * @Param:  orderId
     * @return:
     * @return:
     * @Author: Scot
     * @Date: 2018/6/12 10:57
     */
    void changeOrderStatus(String orderStatus,int orderId);

    List<Order> selectWaitCommitOrders(String type ,int buyerId);
}
