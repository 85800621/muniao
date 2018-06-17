package com.muniao.dao;

import com.muniao.entity.Room;
import org.springframework.stereotype.Repository;

/**
 * Created by XiaBing on 2018/6/13 (17:43)
 * 房源发布流程接口
 */
@Repository
public interface AddRoomMapper {

    /**
     * 添加房源第一步（添加并获取主键id）
     * @param room  房间对象
     */
    void addRoomStep1(Room room);

    /**
     * 添加房源第二步（字段更新）
     * @param room  房间对象
     */
    void updateRoomStep2(Room room);

    /**
     * 添加房源第三步（字段更新）
     * @param room  房间对象
     */
    void updateRoomStep3(Room room);

    /**
     * 添加房源第四步（字段更新）
     * @param room  房间对象
     */
    void updateRoomStep4(Room room);

    /**
     * 添加房源第五步（字段更新）
     * @param room  房间对象
     */
    void updateRoomStep5(Room room);

    /**
     * 通过id删除房源
     * @param roomid 房源id
     */
    void deleteRoomByRoomid(int roomid);

}
