package com.muniao.utils;

import com.muniao.entity.Room;

import java.util.List;

/**
 * 史国纲 2018/6/8
 * 分页查询类
 */
public class PageBean {
    //每页的数据量
    public  final int PAGE_SIZE=30;
    //分页的数据
    private List<Room> data;
    //总也数
    public int totalPages;
    //当前的页面数
    public int currentPage;

    public int getPageSize() {
        return PAGE_SIZE;
    }

    public List<Room> getData() {
        return data;
    }

    public void setData(List<Room> data) {
        this.data = data;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
