package com.muniao.dao;

import com.muniao.entity.RoomAvaliableArea;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 */
@Repository
public interface AvaliableAreaMapper {
    RoomAvaliableArea selectAreaId(int areaId);
}
