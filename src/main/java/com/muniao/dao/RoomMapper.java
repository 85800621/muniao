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
    List<Room> findByFeature(int featureId);
}
