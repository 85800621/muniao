package com.muniao.dao;

import com.muniao.entity.RoomInfo;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7 14:43
 */
@Repository
public interface RoomInfoMapper {
    RoomInfo selectByInfoId(int infoId);
}
