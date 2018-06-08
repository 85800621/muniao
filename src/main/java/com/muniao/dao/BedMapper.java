package com.muniao.dao;

import com.muniao.entity.RoomBedInfo;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 */
@Repository
public interface BedMapper {
    RoomBedInfo selectBedId(int bedInfoId);
}
