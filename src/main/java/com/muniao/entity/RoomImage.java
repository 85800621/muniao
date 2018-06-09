package com.muniao.entity;

/**
 * 史国纲 2018/6/8
 */
public class RoomImage {
    /**
     * 图片ID
     */
    private int imgId;
    /**
     * 对应房间Id
     */
    private int roomId;
    /**
     * 图片地址
     */
    private String imgAddress;

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getImgAddress() {
        return imgAddress;
    }

    public void setImgAddress(String imgAddress) {
        this.imgAddress = imgAddress;
    }
}
