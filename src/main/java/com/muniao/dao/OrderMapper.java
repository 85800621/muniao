package com.muniao.dao;

import com.muniao.entity.Order;
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

  /**
   * 通过订单ID改变订单状态!!!
   * @param orderStatus
   * @param orderId
   */
  void changeOrderStatus(String orderStatus,int orderId);

  /**
   * 能过买家Id和定单类型查找订单   mysql方法为like  只需要传一个数字就能找到所有这个类型的定单
   *  订单状态:
   * 1 全部
   * 2 已付款
   * 3 待入住
   * 4 未付款
   * 5 退款
   * 6 等待确认
   * 7 已取消订单
   * 8 完成
   * @param type
   * @param buyerId
   * @return
   */
  List<Order> selectWaitCommitOrders(String type,int buyerId);

  /**
   * 查找当前用户下所有订单
   * @param currentUserId
   * @return
   */
  List<Order> selectAllOrders(int currentUserId);

}
