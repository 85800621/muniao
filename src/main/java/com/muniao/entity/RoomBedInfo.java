package com.muniao.entity;

/**
 * 史国纲 2018/6/7
 */
public class RoomBedInfo {
    /**
     * 床位id
     */
    private int bedInfoId;
    /**
     * 床类型
     */
    private String benType;
    /**
     * 床长度
     */
    private String bedLength;
    /**
     * 床宽度
     */
    private String bedWidth;
    /**
     * 床位数量
     */
    private String bedNumber;

    public int getBedInfoId() {
        return bedInfoId;
    }

    public void setBedInfoId(int bedInfoId) {
        this.bedInfoId = bedInfoId;
    }

    public String getBenType() {
        return benType;
    }

    public void setBenType(String benType) {
        this.benType = benType;
    }

    public String getBedLength() {
        return bedLength;
    }

    public void setBedLength(String bedLength) {
        this.bedLength = bedLength;
    }

    public String getBedWidth() {
        return bedWidth;
    }

    public void setBedWidth(String bedWidth) {
        this.bedWidth = bedWidth;
    }

    public String getBedNumber() {
        return bedNumber;
    }

    public void setBedNumber(String bedNumber) {
        this.bedNumber = bedNumber;
    }
}
