package com.muniao.entity;

/**
 * 2018/6/7
 * 史国纲
 * 房间设施
 */
public class RoomFacility {
    /**
     * 设施ID
     */
    private int facilityId;
    /**
     * 设施内容
     */
    private String facilityContent;

    public int getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(int facilityId) {
        this.facilityId = facilityId;
    }

    public String getFacilityContent() {
        return facilityContent;
    }

    public void setFacilityContent(String facilityContent) {
        this.facilityContent = facilityContent;
    }
}
