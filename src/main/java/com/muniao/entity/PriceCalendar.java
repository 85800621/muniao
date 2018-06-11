package com.muniao.entity;

import java.util.Date;

/**
 *
 *@Author: Scot
 *@Date: 2018/6/11 2:21
 *@类名:  PriceCalendar
 *@Description:
 *
 */
public class PriceCalendar {
    private Integer priceCalendarId;
    private double roomPrice;
    private Date priceDate;

    public Integer getPriceCalendarId() {
        return priceCalendarId;
    }

    public void setPriceCalendarId(Integer priceCalendarId) {
        this.priceCalendarId = priceCalendarId;
    }

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Date getPriceDate() {
        return priceDate;
    }

    public void setPriceDate(Date priceDate) {
        this.priceDate = priceDate;
    }
}
