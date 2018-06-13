package com.muniao.entity;

/**
 * @Author Scot
 * @Date 2018/6/11 19:29
 * @Name com.muniao.entity
 * @Description:
 **/

public class Date_list {

    private String year;
    private String month;
    private String date;
    private int day;
    private int before;
    private int priceday;
    private int sameroom;
    private int special;
    private String holidayname;
    public void setYear(String year) {
        this.year = year;
    }
    public String getYear() {
        return year;
    }

    public void setMonth(String month) {
        this.month = month;
    }
    public String getMonth() {
        return month;
    }

    public void setDate(String date) {
        this.date = date;
    }
    public String getDate() {
        return date;
    }

    public void setDay(int day) {
        this.day = day;
    }
    public int getDay() {
        return day;
    }

    public void setBefore(int before) {
        this.before = before;
    }
    public int getBefore() {
        return before;
    }

    public void setPriceday(int priceday) {
        this.priceday = priceday;
    }
    public int getPriceday() {
        return priceday;
    }

    public void setSameroom(int sameroom) {
        this.sameroom = sameroom;
    }
    public int getSameroom() {
        return sameroom;
    }

    public void setSpecial(int special) {
        this.special = special;
    }
    public int getSpecial() {
        return special;
    }

    public void setHolidayname(String holidayname) {
        this.holidayname = holidayname;
    }
    public String getHolidayname() {
        return holidayname;
    }

}
