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
    private int FacilityId;
    /**
     * 设施内容
     */
    private String FacilityContent;

    public int getFacilityId() {
        return FacilityId;
    }

    public void setFacilityId(int facilityId) {
        FacilityId = facilityId;
    }

    public String getFacilityContent() {
        return FacilityContent;
    }

    public void setFacilityContent(String facilityContent) {
        FacilityContent = facilityContent;
    }
}
