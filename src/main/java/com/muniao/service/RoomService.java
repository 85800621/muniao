package com.muniao.service;

import com.muniao.entity.Room;

import java.util.List;

/**
 * 史国纲 2018/6/7
 * 房间
 */
public interface RoomService {
    List<Room> findAllByFeature(int featureId);
}
