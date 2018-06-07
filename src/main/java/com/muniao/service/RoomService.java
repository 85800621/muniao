package com.muniao.service;

import com.muniao.entity.Room;

import java.util.List;

/**
 * 史国纲 2018/6/7
 * 房间
 */
public interface RoomService {
    /**
     * 查询特房间信息
     * @param featureId 特色id
     * @return 返回room对象
     */
    List<Room> findAllByFeature(int featureId);

    /**
     * 查询特色房间数量
     * @param featureId 特色id
     * @return 返回数量int
     */
    Integer selectCountRoom(int featureId);
}
