package com.muniao.entity;

/**
 * 失火刚创建
 * 2018/6/7
 * 房间特色
 */
public class RoomFeature {
    /**
     * 房间特色Id
     */
    private int roomFeatureId;
    /**
     * 房间特色
     */
    private String roomFeature;

    /**
     * 特色图片
     *
     */
    private String featureImage;

    public String getFeatureImage() {
        return featureImage;
    }

    public void setFeatureImage(String featureImage) {
        this.featureImage = featureImage;
    }

    public int getRoomFeatureId() {
        return roomFeatureId;
    }

    public void setRoomFeatureId(int roomFeatureId) {
        this.roomFeatureId = roomFeatureId;
    }

    public String getRoomFeature() {
        return roomFeature;
    }

    public void setRoomFeature(String roomFeature) {
        this.roomFeature = roomFeature;
    }
}
