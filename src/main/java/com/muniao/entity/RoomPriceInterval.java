package com.muniao.entity;

/**
 * 2018/6/7
 * 史国纲创建
 * 价格区间
 */
public class RoomPriceInterval {
    /**
     * 价格区间ID
     */
    private int priceIntervalId;
    /**
     * 价格区间
     */
    private String priceInterval;

    public int getPriceIntervalId() {
        return priceIntervalId;
    }

    public void setPriceIntervalId(int priceIntervalId) {
        this.priceIntervalId = priceIntervalId;
    }

    public String getPriceInterval() {
        return priceInterval;
    }

    public void setPriceInterval(String priceInterval) {
        this.priceInterval = priceInterval;
    }
}
