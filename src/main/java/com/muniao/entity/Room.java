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
    private RoomFacility roomFacility;
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
     * 市
     */
    private String roomLocation;
    /**
     *省
     */
    private String privince;
    /**
     * 区
     */
    private String roomArea;
    /**
     * 街道
     */
    private String street;
    /**
     * 小区
     */
    private String build;
    /**
     * 单元
     */
    private String unit;
    /**
     * 门牌号
     */
    private String door;
    /**
     * 地图等级
     */
    private int mapType;
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

    /**
     * 房间图片
     */
    private List<RoomImage> lsit;

    public List<RoomImage> getLsit() {
        return lsit;
    }

    public void setLsit(List<RoomImage> lsit) {
        this.lsit = lsit;
    }

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

    public RoomFacility getRoomFacility() {
        return roomFacility;
    }

    public void setRoomFacility(RoomFacility roomFacility) {
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

    public String getPrivince() {
        return privince;
    }

    public void setPrivince(String privince) {
        this.privince = privince;
    }

    public String getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(String roomArea) {
        this.roomArea = roomArea;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getBuild() {
        return build;
    }

    public void setBuild(String build) {
        this.build = build;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getDoor() {
        return door;
    }

    public void setDoor(String door) {
        this.door = door;
    }

    public int getMapType() {
        return mapType;
    }

    public void setMapType(int mapType) {
        this.mapType = mapType;
    }
}
