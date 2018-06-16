package com.muniao.service.Impl;

import com.muniao.dao.OrderMapper;
import com.muniao.entity.Order;
import com.muniao.service.OrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 16:19
 *@类名:  OrderServiceImpl
 *@Description: 实现OrderService接口
 *
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService{
    @Resource
    private OrderMapper orderDao;
    /**
     * @param id
     * @Description: 接口方法
     * @Param: id
     * @return: List<Order>
     * @Author: Scot
     * @Date: 2018/6/8
     */
    @Override
    public List<Order> selectBuyerOrders(int id) {
        return orderDao.selectBuyerOrders(id);
    }

    /**
     * @param id
     * @Description: 接口方法
     * @Param: id
     * @return: List<Order>
     * @Author: Scot
     * @Date: 2018/6/8 16:40
     */
    @Override
    public List <Order> selectSellerOrders(int id) {
        return orderDao.selectSellerOrders(id);
    }

    /**
     * @Description: 通过订单编号修改订单状态
     * @Param:  orderId orderStatus
     * @return:
     * @Author: Scot
     * @Date: 2018/6/12 11:01
     */
    @Override
    public void changeOrderStatus(String orderStatus,int orderId) {
        orderDao.changeOrderStatus(orderStatus,orderId);
    }

    @Override
    public List <Order> selectWaitCommitOrders(String type, int buyerId) {
        List<Order> orders=orderDao.selectWaitCommitOrders(type,buyerId);
        return orders;
    }

    @Override
    public List <Order> selectAllOrders(int currentUserId) {


        return orderDao.selectAllOrders(currentUserId);
    }

    /**
     * 根据订单Id查找订单
     *
     * @param orderId
     * @return
     */
    @Override
    public Order selectOneOrder(int orderId) {
        return orderDao.selectOneOrder(orderId);
    }


}
