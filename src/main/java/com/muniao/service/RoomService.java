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
    List<Room> findAllByFeature(int featureId,int currentPage);

    /**
     * 查询特色城市
     * @param featureId 特色id
     * @param roomLocation 城市名
     * @return
     */
    List<Room> findByFeatureCity(int featureId,String roomLocation,int currentPage);

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

    /**
     * 查询相同特色所有房间数
     * @param featureId
     * @return
     */
    List countFeatureRoom(int featureId);

    /**
     * 查询相同特色所有房间数
     * @param featureId
     * @return
     */
    Integer countFeatureRoomNum(int featureId);


    /**
     * 按城市查询房间
     */
    List<Room> findByCityName(String roomLocation,int currentPage);

    /**
     * 查出房间地方类型
     */
    List<Room> selectRoomType(String roomLocation,int currentPage);

    /**
     * 查出房间地方类型
     */
    List<Room> selectRoomInterval(String roomLocation,int currentPage);

    /**
     * 查出房间地方类型
     */
    List<Room> selectRoomMethod(String roomLocation,int currentPage);

    /**
     * 查出房间户型
     */
    List<Room> selectRoomStructure(String roomLocation,int currentPage);

    /**
     * 按条件进行查询
     */
    List<Room> selectByCityTitle(String roomLocation,int currentPage,int typeId,int priceId,int methodId,int structureId);


    /**
     * 按房间id查询房间具体信息
     */
    Room selectRoomById(int roomId);


    /**
     * 按用户id查询拥有房间
     */
    List<Room> selectByUserId(int userId);
}
