package com.muniao.entity;

import java.util.List;

/**
 * 2018/6/7
 * 史国纲创建
 * 房间类
 */
public class Room {
    /**
     * 房间id
     */
    private int roomId;
    /**
     * 房间类型
     */
    private RoomType roomType;
    /**
     * 房间名称
     */
    private String roomName;
    /**
     * 房间价格
     */
    private int roomPrice;
    /**
     * 价格区间
     */
    private RoomPriceInterval roomInterval;
    /**
     * 房间特色
     */
    private RoomFeature roomFeature;
    /**
     * 房间设施
     */
    private List<RoomFacility> roomFacility;
    /**
     * 房源描述
     */
    private RoomSourceDesc roomDesc;
    /**
     * 退款规则
     */
    private RefundRule refundRule;
    /**
     * 房间信息
     * private RoomInfo roomInfo;
     * 一整合该字段
     */

    /**
     * 房东
     */
    private User landlord;
    /**
     * 房间状态
     */
    private int  roomStatus;
    /**
     * 房间所在地
     */
    private String roomLocation;
    /**
     * 房间经度
     */
    private String roomLongitude;
    /**
     * 房间纬度
     */
    private String roomLatitude;

    /**
     * 户型
     */
    private RoomStructure roomStructure;
    /**
     * 出租方式
     */
    private RentalMethod rentalMethod;
    /**
     * 房间面积
     */
    private RoomAvaliableArea avaliableArea;
    /**
     * 床位信息
     */
    private RoomBedInfo roomBedInfo;
    /**
     * 是否可以增加床位.
     */
    private String bedAvaliable;

    public RoomStructure getRoomStructure() {
        return roomStructure;
    }

    public void setRoomStructure(RoomStructure roomStructure) {
        this.roomStructure = roomStructure;
    }

    public RentalMethod getRentalMethod() {
        return rentalMethod;
    }

    public void setRentalMethod(RentalMethod rentalMethod) {
        this.rentalMethod = rentalMethod;
    }

    public RoomAvaliableArea getAvaliableArea() {
        return avaliableArea;
    }

    public void setAvaliableArea(RoomAvaliableArea avaliableArea) {
        this.avaliableArea = avaliableArea;
    }

    public RoomBedInfo getRoomBedInfo() {
        return roomBedInfo;
    }

    public void setRoomBedInfo(RoomBedInfo roomBedInfo) {
        this.roomBedInfo = roomBedInfo;
    }

    public String getBedAvaliable() {
        return bedAvaliable;
    }

    public void setBedAvaliable(String bedAvaliable) {
        this.bedAvaliable = bedAvaliable;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public int getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(int roomPrice) {
        this.roomPrice = roomPrice;
    }

    public RoomPriceInterval getRoomInterval() {
        return roomInterval;
    }

    public void setRoomInterval(RoomPriceInterval roomInterval) {
        this.roomInterval = roomInterval;
    }

    public RoomFeature getRoomFeature() {
        return roomFeature;
    }

    public void setRoomFeature(RoomFeature roomFeature) {
        this.roomFeature = roomFeature;
    }

    public List<RoomFacility> getRoomFacility() {
        return roomFacility;
    }

    public void setRoomFacility(List<RoomFacility> roomFacility) {
        this.roomFacility = roomFacility;
    }

    public RoomSourceDesc getRoomDesc() {
        return roomDesc;
    }

    public void setRoomDesc(RoomSourceDesc roomDesc) {
        this.roomDesc = roomDesc;
    }

    public RefundRule getRefundRule() {
        return refundRule;
    }

    public void setRefundRule(RefundRule refundRule) {
        this.refundRule = refundRule;
    }

//    public RoomInfo getRoomInfo() {
//        return roomInfo;
//    }
//
//    public void setRoomInfo(RoomInfo roomInfo) {
//        this.roomInfo = roomInfo;
//    }

    public User getLandlord() {
        return landlord;
    }

    public void setLandlord(User landlord) {
        this.landlord = landlord;
    }

    public int getRoomStatus() {
        return roomStatus;
    }

    public void setRoomStatus(int roomStatus) {
        this.roomStatus = roomStatus;
    }

    public String getRoomLocation() {
        return roomLocation;
    }

    public void setRoomLocation(String roomLocation) {
        this.roomLocation = roomLocation;
    }

    public String getRoomLongitude() {
        return roomLongitude;
    }

    public void setRoomLongitude(String roomLongitude) {
        this.roomLongitude = roomLongitude;
    }

    public String getRoomLatitude() {
        return roomLatitude;
    }

    public void setRoomLatitude(String roomLatitude) {
        this.roomLatitude = roomLatitude;
    }
}
