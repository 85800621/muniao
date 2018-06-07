package com.muniao.entity;

/**
 * 房间信息
 * 史国纲
 * 2018/6/7
 */
public class RoomInfo {
    /**
     * 房间信息Id
     */
    private int infoId;
    /**
     * 房间Id
     */
    private int roomId;
    /**
     * 房间昵称
     */
    private String roomNickName;
    /**
     * 户型
     */
    private int StructureId;
    /**
     * 出租类型
     */
    private int rentalMethodId;
    /**
     * 房间面积和人数
     */
    private int roomAvaliableAreaId;
    /**
     * 床位类型
     */
    private int roomBedInfoId;
    /**
     * 是否可以加床
     */
    private int  roomBedAvaliable;

    public int getInfoId() {
        return infoId;
    }

    public void setInfoId(int infoId) {
        this.infoId = infoId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomNickName() {
        return roomNickName;
    }

    public void setRoomNickName(String roomNickName) {
        this.roomNickName = roomNickName;
    }

    public int getStructureId() {
        return StructureId;
    }

    public void setStructureId(int structureId) {
        StructureId = structureId;
    }

    public int getRentalMethodId() {
        return rentalMethodId;
    }

    public void setRentalMethodId(int rentalMethodId) {
        this.rentalMethodId = rentalMethodId;
    }

    public int getRoomAvaliableAreaId() {
        return roomAvaliableAreaId;
    }

    public void setRoomAvaliableAreaId(int roomAvaliableAreaId) {
        this.roomAvaliableAreaId = roomAvaliableAreaId;
    }

    public int getRoomBedInfoId() {
        return roomBedInfoId;
    }

    public void setRoomBedInfoId(int roomBedInfoId) {
        this.roomBedInfoId = roomBedInfoId;
    }

    public int getRoomBedAvaliable() {
        return roomBedAvaliable;
    }

    public void setRoomBedAvaliable(int roomBedAvaliable) {
        this.roomBedAvaliable = roomBedAvaliable;
    }
}
