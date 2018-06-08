package com.muniao.dao;

import com.muniao.entity.Order;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 16:03
 *@类名:  OrderMapper
 *@Description:
 *
 */
@Repository
public interface OrderMapper {
   /**
    * @Description:  通过房客id 查找所有订单
    * @Param:  id
    * @return: List<Order>
    * @Author: Scot
    * @Date: 2018/6/8
    */
     List<Order> selectBuyerOrders(int buyerId);
     /**
      * @Description: 通过房东id查找所有订单
      * @Param:  id
      * @return: List<Order>
      * @Author: Scot
      * @Date: 2018/6/8 16:23
      */
     List<Order> selectSellerOrders(int sellerId);

}
