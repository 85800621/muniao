package com.muniao.dao;


import com.muniao.entity.Room;
import org.apache.ibatis.annotations.Param;
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
     * 查询特色城市
     * @param featureId 特色id
     * @param roomLocation 城市名
     * @return
     */

    List<Room> findByFeatureCity(@Param("featureId") int featureId, @Param("roomLocation")String roomLocation);

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
   // Integer selectCountRoom(int featureId);
}
