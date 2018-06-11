package com.muniao.service.Impl;

import com.muniao.dao.OrderDetailMapper;
import com.muniao.entity.OrderDetail;
import com.muniao.service.OrderDetailService;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 20:33
 * @Name com.muniao.service.Impl
 * @Description:
 **/
@Repository
public class OrderDetailServiceImpl implements OrderDetailService {
    @Resource
    private OrderDetailMapper orderDetailDao;
    @Override
    public OrderDetail selectOrderDetail(int orderId) {
        return orderDetailDao.selectOrderDetail(orderId);
    }
}
