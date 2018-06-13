package com.muniao.entity;

import java.util.Date;
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



    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }



    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public RoomPriceInterval getPrice_interval_id() {
        return price_interval_id;
    }

    public void setPrice_interval_id(RoomPriceInterval price_interval_id) {
        this.price_interval_id = price_interval_id;
    }



    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }



    public Integer getIsaddbed() {
        return isaddbed;
    }

    public void setIsaddbed(Integer isaddbed) {
        this.isaddbed = isaddbed;
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

    public Integer getMaptype() {
        return maptype;
    }

    public void setMaptype(Integer maptype) {
        this.maptype = maptype;
    }

    public String getFyms() {
        return fyms;
    }

    public void setFyms(String fyms) {
        this.fyms = fyms;
    }

    public String getZbss() {
        return zbss;
    }

    public void setZbss(String zbss) {
        this.zbss = zbss;
    }

    public String getCclx() {
        return cclx;
    }

    public void setCclx(String cclx) {
        this.cclx = cclx;
    }

    public String getJzdb() {
        return jzdb;
    }

    public void setJzdb(String jzdb) {
        this.jzdb = jzdb;
    }

    public String getSqms() {
        return sqms;
    }

    public void setSqms(String sqms) {
        this.sqms = sqms;
    }

    public Integer getBedroom() {
        return bedroom;
    }

    public void setBedroom(Integer bedroom) {
        this.bedroom = bedroom;
    }

    public Integer getLivingroom() {
        return livingroom;
    }

    public void setLivingroom(Integer livingroom) {
        this.livingroom = livingroom;
    }

    public Integer getBathroom_self() {
        return bathroom_self;
    }

    public void setBathroom_self(Integer bathroom_self) {
        this.bathroom_self = bathroom_self;
    }

    public Integer getBathroom_public() {
        return bathroom_public;
    }

    public void setBathroom_public(Integer bathroom_public) {
        this.bathroom_public = bathroom_public;
    }

    public Integer getMax_num() {
        return max_num;
    }

    public void setMax_num(Integer max_num) {
        this.max_num = max_num;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getSameroom() {
        return sameroom;
    }

    public void setSameroom(Integer sameroom) {
        this.sameroom = sameroom;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public Integer getAdd_bed_num() {
        return add_bed_num;
    }

    public void setAdd_bed_num(Integer add_bed_num) {
        this.add_bed_num = add_bed_num;
    }

    public Integer getAdd_bed_price() {
        return add_bed_price;
    }

    public void setAdd_bed_price(Integer add_bed_price) {
        this.add_bed_price = add_bed_price;
    }

    public Integer getKitchenroom() {
        return kitchenroom;
    }

    public void setKitchenroom(Integer kitchenroom) {
        this.kitchenroom = kitchenroom;
    }

    public Integer getIs_deposit() {
        return is_deposit;
    }

    public void setIs_deposit(Integer is_deposit) {
        this.is_deposit = is_deposit;
    }

    public Double getDeposit_money() {
        return deposit_money;
    }

    public void setDeposit_money(Double deposit_money) {
        this.deposit_money = deposit_money;
    }

    public Integer getIs_invoice() {
        return is_invoice;
    }

    public void setIs_invoice(Integer is_invoice) {
        this.is_invoice = is_invoice;
    }

    public Integer getMin_day() {
        return min_day;
    }

    public void setMin_day(Integer min_day) {
        this.min_day = min_day;
    }

    public Integer getMax_day() {
        return max_day;
    }

    public void setMax_day(Integer max_day) {
        this.max_day = max_day;
    }

    public Integer getIn_time() {
        return in_time;
    }

    public void setIn_time(Integer in_time) {
        this.in_time = in_time;
    }

    public Integer getOut_time() {
        return out_time;
    }

    public void setOut_time(Integer out_time) {
        this.out_time = out_time;
    }

    public String getRzyq() {
        return rzyq;
    }

    public void setRzyq(String rzyq) {
        this.rzyq = rzyq;
    }

    public Integer getSpecialprice_istru() {
        return specialprice_istru;
    }

    public void setSpecialprice_istru(Integer specialprice_istru) {
        this.specialprice_istru = specialprice_istru;
    }

    public Date getWeek_start_date() {
        return week_start_date;
    }

    public void setWeek_start_date(Date week_start_date) {
        this.week_start_date = week_start_date;
    }

    public Date getWeek_end_date() {
        return week_end_date;
    }

    public void setWeek_end_date(Date week_end_date) {
        this.week_end_date = week_end_date;
    }

    public String getWeeks() {
        return weeks;
    }

    public void setWeeks(String weeks) {
        this.weeks = weeks;
    }

    public Double getWeek_price() {
        return week_price;
    }

    public void setWeek_price(Double week_price) {
        this.week_price = week_price;
    }

    public Integer getWeekmonth_disco() {
        return weekmonth_disco;
    }

    public void setWeekmonth_disco(Integer weekmonth_disco) {
        this.weekmonth_disco = weekmonth_disco;
    }

    public Double getDiscount_week() {
        return discount_week;
    }

    public void setDiscount_week(Double discount_week) {
        this.discount_week = discount_week;
    }

    public Double getDiscount_month() {
        return discount_month;
    }

    public void setDiscount_month(Double discount_month) {
        this.discount_month = discount_month;
    }

    public Date getDiscount_start_date() {
        return discount_start_date;
    }

    public void setDiscount_start_date(Date discount_start_date) {
        this.discount_start_date = discount_start_date;
    }

    public Date getDiscount_end_date() {
        return discount_end_date;
    }

    public void setDiscount_end_date(Date discount_end_date) {
        this.discount_end_date = discount_end_date;
    }

    public Integer getIs_zhima() {
        return is_zhima;
    }

    public void setIs_zhima(Integer is_zhima) {
        this.is_zhima = is_zhima;
    }

    public Integer getIs_xiaobai() {
        return is_xiaobai;
    }

    public void setIs_xiaobai(Integer is_xiaobai) {
        this.is_xiaobai = is_xiaobai;
    }

    public Date getLongrent_begin_time() {
        return longrent_begin_time;
    }

    public void setLongrent_begin_time(Date longrent_begin_time) {
        this.longrent_begin_time = longrent_begin_time;
    }

    public Date getLongrent_end_time() {
        return longrent_end_time;
    }

    public void setLongrent_end_time(Date longrent_end_time) {
        this.longrent_end_time = longrent_end_time;
    }

    public Integer getIs_longrent() {
        return is_longrent;
    }

    public void setIs_longrent(Integer is_longrent) {
        this.is_longrent = is_longrent;
    }

    public Double getLongrent_price() {
        return longrent_price;
    }

    public void setLongrent_price(Double longrent_price) {
        this.longrent_price = longrent_price;
    }

    public Double getLong_deposit_money() {
        return long_deposit_money;
    }

    public void setLong_deposit_money(Double long_deposit_money) {
        this.long_deposit_money = long_deposit_money;
    }

    public Integer getIs_over_weekprice() {
        return is_over_weekprice;
    }

    public void setIs_over_weekprice(Integer is_over_weekprice) {
        this.is_over_weekprice = is_over_weekprice;
    }

    public String getSupport() {
        return support;
    }

    public void setSupport(String support) {
        this.support = support;
    }

    public Integer getSrv_bei_dan() {
        return srv_bei_dan;
    }

    public void setSrv_bei_dan(Integer srv_bei_dan) {
        this.srv_bei_dan = srv_bei_dan;
    }

    public Integer getSrv_wei_sheng() {
        return srv_wei_sheng;
    }

    public void setSrv_wei_sheng(Integer srv_wei_sheng) {
        this.srv_wei_sheng = srv_wei_sheng;
    }

    public List<RoomImage> getLsit() {
        return lsit;
    }

    public void setLsit(List<RoomImage> lsit) {
        this.lsit = lsit;
    }

    public RoomType getHouse_type() {
        return house_type;
    }

    public void setHouse_type(RoomType house_type) {
        this.house_type = house_type;
    }

    public RoomFeature getRoom_feature_id() {
        return room_feature_id;
    }

    public void setRoom_feature_id(RoomFeature room_feature_id) {
        this.room_feature_id = room_feature_id;
    }

    public User getUser_id() {
        return user_id;
    }

    public void setUser_id(User user_id) {
        this.user_id = user_id;
    }

    public RentalMethod getRent_type() {
        return rent_type;
    }

    public void setRent_type(RentalMethod rent_type) {
        this.rent_type = rent_type;
    }

    public RefundRule getRefund_type() {
        return refund_type;
    }

    public void setRefund_type(RefundRule refund_type) {
        this.refund_type = refund_type;
    }
}
