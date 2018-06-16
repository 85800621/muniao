package com.muniao.dao;

import com.muniao.entity.RoomType;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 房间类型
 */
@Repository
public interface RoomTypeMapper {
    RoomType selectByTypeId(int typeId);

    /**
     * 查出所有地方类型
     * @return
     */
    List<RoomType> selectType();
}
