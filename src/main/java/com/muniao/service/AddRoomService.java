package com.muniao.service;

import com.muniao.entity.Room;
import com.muniao.entity.User;

/**
 * Created by XiaBing on 2018/6/13 (20:40)
 * 房源添加 service层 接口
 */
public interface AddRoomService {

    /**
     * 添加房源第一步
     * @param user 用户（session中的用户的对象，将用户id set到room）
     * @param room 房源（处理 特色 和 价格区间）
     */
    void AddRoomServiceStep1(User user,Room room);

    /**
     * 添加房源第二步
     * @param room 房源
     */
    void AddRoomServiceStep2(Room room);

    /**
     * 添加房源第三步
     * @param room 房源
     */
    void AddRoomServiceStep3(Room room);

    /**
     * 添加房源第四步
     * @param room 房源
     */
    void AddRoomServiceStep4(Room room);

    /**
     * 添加房源第五步
     * @param room 房源
     */
    void AddRoomServiceStep5(Room room);

    /**
     * 通过id删除房源
     * @param roomid 房源id
     */
    void deleteRoomByRoomid(int roomid);
}
