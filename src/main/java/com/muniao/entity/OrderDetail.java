package com.muniao.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 15:39
 *@类名:  OrderDetail
 *@Description:  生成orderDtail 实体类
 *
 */
public class OrderDetail implements Serializable{
    /**
     * 订单详情id
     *
     */
    private Integer orderDetailId;
    /**
     * 预订时间
     *
     */
    private Date bookingTime;
    /**
     * 房间
     *
     */
    private Room room;
    /**
     * 退款规则
     *
     */
    private RefundRule refundRule;
    /**
     * 入住时间
     *
     */
    private Date checkInTime;
    /**
     * 离店时间
     *
     */
    private Date departureTime;
    /**
     * 入住人数
     *
     */
    private Integer checkInPopulation;
    /**
     * 价格详情
     *
     */
    private String priceDetail;
    /**
     * 总价
     *
     */
    private double totalPrice;
    /**
     * 总预付款
     *
     */
    private double totalDeposit;
    /**
     * 实付款
     *
     */
    private double actuallyPaid;
    /**
     * 到店付款
     *
     */
    private double toShopPayment;
    /**
     * 入住人信息
     *
     */
    private List<CheckInCustomer> checkInCustomers;

    public List <CheckInCustomer> getCheckInCustomers() {
        return checkInCustomers;
    }

    public void setCheckInCustomers(List <CheckInCustomer> checkInCustomers) {
        this.checkInCustomers = checkInCustomers;
    }

    public Integer getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(Integer orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Date getBookingTime() {
        return bookingTime;
    }

    public void setBookingTime(Date bookingTime) {
        this.bookingTime = bookingTime;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public RefundRule getRefundRule() {
        return refundRule;
    }

    public void setRefundRule(RefundRule refundRule) {
        this.refundRule = refundRule;
    }

    public Date getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Date checkInTime) {
        this.checkInTime = checkInTime;
    }

    public Date getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }

    public Integer getCheckInPopulation() {
        return checkInPopulation;
    }

    public void setCheckInPopulation(Integer checkInPopulation) {
        this.checkInPopulation = checkInPopulation;
    }

    public String getPriceDetail() {
        return priceDetail;
    }

    public void setPriceDetail(String priceDetail) {
        this.priceDetail = priceDetail;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getTotalDeposit() {
        return totalDeposit;
    }

    public void setTotalDeposit(double totalDeposit) {
        this.totalDeposit = totalDeposit;
    }

    public double getActuallyPaid() {
        return actuallyPaid;
    }

    public void setActuallyPaid(double actuallyPaid) {
        this.actuallyPaid = actuallyPaid;
    }

    public double getToShopPayment() {
        return toShopPayment;
    }

    public void setToShopPayment(double toShopPayment) {
        this.toShopPayment = toShopPayment;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "orderDetailId=" + orderDetailId +
                ", bookingTime=" + bookingTime +
                ", room=" + room +
                ", refundRule=" + refundRule +
                ", checkInTime=" + checkInTime +
                ", departureTime=" + departureTime +
                ", checkInPopulation=" + checkInPopulation +
                ", priceDetail='" + priceDetail + '\'' +
                ", totalPrice=" + totalPrice +
                ", totalDeposit=" + totalDeposit +
                ", actuallyPaid=" + actuallyPaid +
                ", toShopPayment=" + toShopPayment +
                ", checkInCustomers=" + checkInCustomers +
                '}';
    }
}
