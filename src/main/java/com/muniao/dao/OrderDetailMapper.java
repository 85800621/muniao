package com.muniao.dao;

import com.muniao.entity.OrderDetail;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/8 20:30
 * @Name com.muniao.dao
 * @Description:
 **/
@Repository
public interface OrderDetailMapper {
    /**
     * @Description: 查找OrderDetail的DAO接口
     * @Param:  orderId
     * @return:  OrderDetail
     * @Author: Scot
     * @Date: 2018/6/8 20:31
     */
    OrderDetail selectOrderDetail(int orderId);

    /**
     *
     */
    void insertOneOrderDetail(OrderDetail orderDetail);
}
