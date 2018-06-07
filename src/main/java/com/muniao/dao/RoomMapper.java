package com.muniao.dao;


import com.muniao.entity.Room;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 史国纲 2018-06-07 14:30
 * 房间
 */
@Repository
public interface RoomMapper {
    /**
     * 查询特房间信息
     * @param featureId 特色id
     * @return 返回room对象
     */
    List<Room> findByFeature(int featureId);

    /**
     * 查询特色房间数量
     * @param featureId 特色id
     * @return 返回数量int
     */
    Integer selectCountRoom(int featureId);
}
