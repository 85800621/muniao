package com.muniao.entity;

import java.util.List;

/**
 * 2018/6/7
 * 史国纲创建
 * 房间类
 */
public class Room {
    private Integer roomid;               //  房源id
    private RoomType house_type;           // 房源类型（民居、客栈）
    private String title;                 // 房源标题
    private RoomPriceInterval price_interval_id;    // 价格区间
    private RoomFeature room_feature_id;      // 房间特色id（别墅、主题房）
    private User user_id;              // 房源所属用户id
    private String city;                  // 城市
    private String lng;                   // 经度
    private String lat;                   // 纬度
    private String province;              // 省份
    private Double price;                 // 价格
    private RentalMethod rent_type;            // 出租类型（整租、单间）
    private Integer isaddbed;             // 是否可以加床
    private RefundRule refund_type;          // 协议类型（严格 灵活）
    private String area;                  // 区
    private String street;                // 街道
    private String xiaoqu;                // 小区
    private String build;                 // 楼号
    private String unit;                  // 单元号
    private String door;                  // 门牌号
    private Integer maptype;              // 地图类型
    private String fyms;                  // 房源描述
    private String zbss;                  // 周边设施
    private String cclx;                  // 乘车路线
    private String jzdb;                  // 建筑地标
    private String sqms;                  // 商圈描述
    private Integer bedroom;              // 卧室数量
    private Integer livingroom;           // 客厅数量
    private Integer bathroom_self;        // 独立卫生间数量
    private Integer bathroom_public;      // 公共卫生间数量
    private Integer max_num;              // 最大入住人数
    private Integer size;                 // 房间面积
    private Integer sameroom;             // 相同房源套数
    private String subtitle;              // 房源别名
    private Integer add_bed_num;          // 额外加床数量
    private Integer add_bed_price;        // 额外加床单价
    private Integer kitchenroom;          // 厨房数量
    private Integer is_deposit;           // 是否需要押金
    private Double deposit_money;         // 押金金额
    private Integer is_invoice;           // 是否能开发票
    private Integer min_day;              // 最少入住天数
    private Integer max_day;              // 最多入住天数
    private Integer in_time;              // 最早入住时间
    private Integer out_time;             // 最晚退房时间
    private String rzyq;                  // 房东要求
    private Integer specialprice_istru;   // 是否开启星期特殊价格
    private Date week_start_date;         // 星期开始日期
    private Date week_end_date;           // 星期结束日期
    private String weeks;                 // 特殊星期记录（格式 5,6,0）
    private Double week_price;            // 星期特殊价格
    private Integer weekmonth_disco;      // 是否开启周月折扣
    private Double discount_week;         // 周折扣
    private Double discount_month;        // 月折扣
    private Date discount_start_date;     // 折扣开始日期
    private Date discount_end_date;       // 折扣结束日期
    private Integer is_zhima;             // 是否开启芝麻信用
    private Integer is_xiaobai;           // 是否开启京东
    private Date longrent_begin_time;
    private Date longrent_end_time;
    private Integer is_longrent;
    private Double longrent_price;
    private Double long_deposit_money;
    private Integer is_over_weekprice;
    private String support;
    private Integer srv_bei_dan;
    private Integer srv_wei_sheng;
    private List<RoomImage> lsit;


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


    public String getRoomDescribe() {
        return roomDescribe;
    }

    public void setRoomDescribe(String roomDescribe) {
        this.roomDescribe = roomDescribe;
    }

    public String getRoomAmbitus() {
        return roomAmbitus;
    }

    public void setRoomAmbitus(String roomAmbitus) {
        this.roomAmbitus = roomAmbitus;
    }

    public String getRoomRoute() {
        return roomRoute;
    }

    public void setRoomRoute(String roomRoute) {
        this.roomRoute = roomRoute;
    }
}
