package com.muniao.entity;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/8 19:37
 *@类名:  CheckInCustomer
 *@Description: 创建入住人信息
 *
 */
public class CheckInCustomer {

    private Integer checkInCustomerId;

    private String customerName;

    private String customerIDCard;

    private String customerPhoneNum;

    private String orderDetailId;

    public String getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(String orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Integer getCheckInCustomerId() {
        return checkInCustomerId;
    }

    public void setCheckInCustomerId(Integer checkInCustomerId) {
        this.checkInCustomerId = checkInCustomerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerIDCard() {
        return customerIDCard;
    }

    public void setCustomerIDCard(String customerIDCard) {
        this.customerIDCard = customerIDCard;
    }

    public String getCustomerPhoneNum() {
        return customerPhoneNum;
    }

    public void setCustomerPhoneNum(String customerPhoneNum) {
        this.customerPhoneNum = customerPhoneNum;
    }
}
