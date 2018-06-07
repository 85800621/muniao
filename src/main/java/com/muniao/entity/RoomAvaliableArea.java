package com.muniao.entity;

/**
 * 史国纲 2018/6/7
 * 一株几人
 */
public class RoomAvaliableArea {
    /**
     * 房间面积ID
     */
    private int areaId;
    /**
     * 标准人数
     */
    private String standPop;
    /**
     * 房间面积
     */
    private String roomArea;

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public String getStandPop() {
        return standPop;
    }

    public void setStandPop(String standPop) {
        this.standPop = standPop;
    }

    public String getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(String roomArea) {
        this.roomArea = roomArea;
    }
}
