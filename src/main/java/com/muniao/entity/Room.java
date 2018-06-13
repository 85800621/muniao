package com.muniao.entity;

import java.sql.Date;
import java.util.List;

/**
 * 2018/6/7
 * 史国纲创建
 * 房间类
 *
 * 2018/6/13
 * 夏冰修改 房间类
 */
public class Room {

    private Integer roomid;               //  房源id
    private Integer house_type;           // 房源类型（民居、客栈）            --- RoomType
    private String title;                 // 房源标题
    private Integer price_interval_id;    // 价格区间                         --- RoomPriceInterval
    private Integer room_feature_id;      // 房间特色id（别墅、主题房）        --- RoomFeature
    private Integer user_id;              // 房源所属用户id                   --- User
    private String city;                  // 城市
    private String lng;                   // 经度
    private String lat;                   // 纬度
    private String province;              // 省份
    private Double price;                 // 价格
    private Integer rent_type;            // 出租类型（整租、单间）            --- RentalMethod
    private Integer isaddbed;             // 是否可以加床
    private Integer refund_type;          // 协议类型（严格 灵活）             --- RefundRule
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
    private Integer is_zhima;             // 是否开启芝麻信用免押
    private Integer is_xiaobai;           // 是否开启小白信用免押
    private Date longrent_begin_time;     // 长租开始日期
    private Date longrent_end_time;       // 长租结束日期
    private Integer is_longrent;          // 是否开启长租
    private Double longrent_price;        // 长租价格 每个月
    private Double long_deposit_money;    // 长租押金 每个月
    private Integer is_over_weekprice;    // 是否覆盖
    private String support;               // 常见设施和便利设施
    private Integer srv_bei_dan;          // 被单多久一换
    private Integer srv_wei_sheng;        // 卫生多久一做

    private List<RoomImage> lsit;         // 图片集合




}
