package com.muniao.entity;


        import java.util.List;
        import java.util.Date;
/**
 *
 *@Author: Scot
 *@Date: 2018/6/11 19:28
 *@类名:  JsonRootBean
 *@Description:
 *
 */
public class JsonRootBean {

    private int status;
    private String message;
    private String act;
    private List<Month_list> month_list;
    private Date start_date;
    private Date end_month;
    private int month_num;
    public void setStatus(int status) {
        this.status = status;
    }
    public int getStatus() {
        return status;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public String getMessage() {
        return message;
    }

    public void setAct(String act) {
        this.act = act;
    }
    public String getAct() {
        return act;
    }

    public void setMonth_list(List<Month_list> month_list) {
        this.month_list = month_list;
    }
    public List<Month_list> getMonth_list() {
        return month_list;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }
    public Date getStart_date() {
        return start_date;
    }

    public void setEnd_month(Date end_month) {
        this.end_month = end_month;
    }
    public Date getEnd_month() {
        return end_month;
    }

    public void setMonth_num(int month_num) {
        this.month_num = month_num;
    }
    public int getMonth_num() {
        return month_num;
    }

}