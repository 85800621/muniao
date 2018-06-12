package com.muniao.entity;

/**
 * Created by XiaBing on 2018/6/11 (19:19)
 */
public class PostData {

    private Integer roomid;
    private String province;
    private String city;
    private String area;
    private String street;
    private String xiaoqu;
    private String build;
    private String unit;
    private String door;
    private String lng;
    private String lat;
    private String maptype;

    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getXiaoqu() {
        return xiaoqu;
    }

    public void setXiaoqu(String xiaoqu) {
        this.xiaoqu = xiaoqu;
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

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getMaptype() {
        return maptype;
    }

    public void setMaptype(String maptype) {
        this.maptype = maptype;
    }

    @Override
    public String toString() {
        return "PostData{" +
                "roomid=" + roomid +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", area='" + area + '\'' +
                ", street='" + street + '\'' +
                ", xiaoqu='" + xiaoqu + '\'' +
                ", build='" + build + '\'' +
                ", unit='" + unit + '\'' +
                ", door='" + door + '\'' +
                ", lng='" + lng + '\'' +
                ", lat='" + lat + '\'' +
                ", maptype='" + maptype + '\'' +
                '}';
    }
}
