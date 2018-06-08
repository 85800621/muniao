package com.muniao.dao;

import com.muniao.entity.RoomFacility;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7 14:38
 */
@Repository
public interface RoomFacilityMapper {
    RoomFacility selectFacilityById(int FacilityId);
}
