package com.muniao.entity;

import java.io.Serializable;
import java.util.Date;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 15:39
 *@类名:  OrderDetail
 *@Description:  生成orderDtail 实体类
 *
 */
public class OrderDetail implements Serializable{
    private Integer orderDetailId;

    private Date bookingTime;

    private Room room;

    private RefundRule refundRule;

    private Date checkInTime;

    private Date departureTime;

    private Integer checkInPopulation;

    private String priceDetail;

    private double totalPrice;

    private double totalDeposit;

    private double actuallyPaid;

    private double toShopPayment;


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
}
