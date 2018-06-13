package com.muniao.entity;

import java.util.Date;

/**
 * @Author Scot
 * @Date 2018/6/11 19:29
 * @Name com.muniao.entity
 * @Description:
 **/
public class Month_list {



        private Date month;
        private long start;
        private long end;
        private int sameroom;
        private int dateno;
        private java.util.List <Date_list> list;
        public void setMonth(Date month) {
            this.month = month;
        }
        public Date getMonth() {
            return month;
        }

        public void setStart(long start) {
            this.start = start;
        }
        public long getStart() {
            return start;
        }

        public void setEnd(long end) {
            this.end = end;
        }
        public long getEnd() {
            return end;
        }

        public void setSameroom(int sameroom) {
            this.sameroom = sameroom;
        }
        public int getSameroom() {
            return sameroom;
        }

        public void setDateno(int dateno) {
            this.dateno = dateno;
        }
        public int getDateno() {
            return dateno;
        }

        public void setList(java.util.List <Date_list> list) {
            this.list = list;
        }
        public java.util.List <Date_list> getList() {
            return list;
        }
}
