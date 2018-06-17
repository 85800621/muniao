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

    /**
     * 查找所有待确认的订单
     * @param type
     * @param buyerId
     * @return
     */
    List<Order> selectWaitCommitOrders(String type ,int buyerId);

    /**
     * 根据当前用户ID查找用户下所有订单
     * @param currentUserId
     * @return
     */
    List<Order> selectAllOrders(int currentUserId);

    /**
     * 根据订单Id查找订单
     * @param orderId
     * @return
     */
    Order selectOneOrder(int orderId);

    void insertOneOrder(Order order);
}
