package com.muniao.entity;

/**
 * 史国纲 2018/6/7
 * 户型类
 */
public class RoomStructure {
    /**
     * 户型id
     */
    private int structureId;
    /**
     * 卧室
     */
    private int bedroomNum;
    /**
     * 客厅
     */
    private int livingroomNum;
    /**
     * 厨房
     */
    private int kitchenNum;
    /**
     * 独立卫生间
     */
    private int bathroomNum;
    /**
     * 公共卫生间
     */
    private int pubbathroomNum;

    public int getStructureId() {
        return structureId;
    }

    public void setStructureId(int structureId) {
        this.structureId = structureId;
    }

    public int getBedroomNum() {
        return bedroomNum;
    }

    public void setBedroomNum(int bedroomNum) {
        this.bedroomNum = bedroomNum;
    }

    public int getLivingroomNum() {
        return livingroomNum;
    }

    public void setLivingroomNum(int livingroomNum) {
        this.livingroomNum = livingroomNum;
    }

    public int getKitchenNum() {
        return kitchenNum;
    }

    public void setKitchenNum(int kitchenNum) {
        this.kitchenNum = kitchenNum;
    }

    public int getBathroomNum() {
        return bathroomNum;
    }

    public void setBathroomNum(int bathroomNum) {
        this.bathroomNum = bathroomNum;
    }

    public int getPubbathroomNum() {
        return pubbathroomNum;
    }

    public void setPubbathroomNum(int pubbathroomNum) {
        this.pubbathroomNum = pubbathroomNum;
    }
}
