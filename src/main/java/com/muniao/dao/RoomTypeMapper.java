package com.muniao.dao;

import com.muniao.entity.RoomType;
import org.springframework.stereotype.Repository;

/**
 * 房间类型
 */
@Repository
public interface RoomTypeMapper {
    RoomType selectByTypeId(int typeId);
}
