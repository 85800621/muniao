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
    List<Room> findByFeature(@Param("roomFeatureId")int featureId,@Param("startPage")int startPage,@Param("endPage")int endPage);

    /**
     * 查询特色城市
     * @param featureId 特色id
     * @param roomLocation 城市名
     * @return
     */

    List<Room> findByFeatureCity(@Param("featureId") int featureId, @Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);

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

    /**
     * 查询相同特色所有房间数
     * @param featureId
     * @return
     */
    Integer countFeatureRoom(int featureId);

    /**
     * 按城市查询房间
     * @param roomLocation 房间名
     * @return
     */
    List<Room> selectByCity(@Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);

    /**
     * 查出房间地方类型
     */
     List<Room> selectRoomType(@Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);
    /**
     * 查出房间地方价格区间
     */
    List<Room> selectRoomInterval(@Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);

    /**
     * 查出所有房间出租方式
     */
    List<Room> selectRoomMethod(@Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);

    /**
     * 查出所有查出房间户型
     */
    List<Room> selectRoomStructure(@Param("roomLocation")String roomLocation,@Param("startPage")int startPage,@Param("endPage")int endPage);


    /**
     * 按条件查询
     */
    List<Room> selectByCityTitle(@Param("roomLocation")String roomLocation
                                ,@Param("startPage")int startPage
                                ,@Param("endPage")int endPage
                                ,@Param("typeId")int typeId
                                ,@Param("priceId")int priceId
                                ,@Param("methodId")int methodId
                                ,@Param("structureId")int structureId);

    /**
     * 按房间id查询房间具体信息
     */
    Room selectRoomById(int roomId);
}

