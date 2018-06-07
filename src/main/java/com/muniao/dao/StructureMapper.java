package com.muniao.dao;

import com.muniao.entity.RoomStructure;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 *
 */
@Repository
public interface StructureMapper {
    RoomStructure selectByStructureId(int structureId);
}
