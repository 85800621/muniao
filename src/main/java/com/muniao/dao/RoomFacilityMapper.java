package com.muniao.dao;

import com.muniao.entity.RoomFacility;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 史国纲 2018/6/7 14:38
 */
@Repository
public interface RoomFacilityMapper {
    List<RoomFacility> selectAllFacility();
}
