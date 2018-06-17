package com.muniao.service.Impl;

import com.muniao.dao.OrderDetailMapper;
import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 20:33
 * @Name com.muniao.service.Impl
 * @Description:
 **/
@Service
@Transactional
public class OrderDetailServiceImpl implements OrderDetailService {
    @Resource
    private OrderDetailMapper orderDetailDao;
    @Override
    public OrderDetail selectOrderDetail(int orderId) {
        return orderDetailDao.selectOrderDetail(orderId);
    }

    @Override
    public void insertOneOrderDetail(OrderDetail orderDetail) {
        orderDetailDao.insertOneOrderDetail(orderDetail);
    }
}
