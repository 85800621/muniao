package com.muniao.entity;

/**
 * 2018/6/7
 * 史国纲创建
 * 房源描述类
 */
public class RoomSourceDesc {
    /**
     * 房源描述id
     */
    private int roomSourceDesecId;
    /**
     * 房源描述
     */
    private String roomSourceDesc;
    /**
     * 乘车路线
     */
    private String carRoute;
    /**
     * 周边设施
     */
    private String surroundingFacility;
    /**
     * 地标
     */
    private String landMark;
    /**
     * 周边商圈
     */
    private String businessCirle;

    public int getRoomSourceDesecId() {
        return roomSourceDesecId;
    }

    public void setRoomSourceDesecId(int roomSourceDesecId) {
        this.roomSourceDesecId = roomSourceDesecId;
    }

    public String getRoomSourceDesc() {
        return roomSourceDesc;
    }

    public void setRoomSourceDesc(String roomSourceDesc) {
        this.roomSourceDesc = roomSourceDesc;
    }

    public String getCarRoute() {
        return carRoute;
    }

    public void setCarRoute(String carRoute) {
        this.carRoute = carRoute;
    }

    public String getSurroundingFacility() {
        return surroundingFacility;
    }

    public void setSurroundingFacility(String surroundingFacility) {
        this.surroundingFacility = surroundingFacility;
    }

    public String getLandMark() {
        return landMark;
    }

    public void setLandMark(String landMark) {
        this.landMark = landMark;
    }

    public String getBusinessCirle() {
        return businessCirle;
    }

    public void setBusinessCirle(String businessCirle) {
        this.businessCirle = businessCirle;
    }
}
