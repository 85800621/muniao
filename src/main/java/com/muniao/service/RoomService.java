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
     * 查询特色城市
     * @param featureId 特色id
     * @param roomLocation 城市名
     * @return
     */
    List<Room> findByFeatureCity(int featureId,String roomLocation);

    /**
     * 查询出所有城市名
     * @param featureId
     * @return
     */
    List<Room> findByCityList(int featureId);

    /**
     * 查询特色房间数量
     * @param featureId 特色id
     * @return 返回数量int
     */
    Integer CountFeatureList(int featureId);
}
