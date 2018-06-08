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


}
