package com.muniao.dao;

import com.muniao.entity.RoomSourceDesc;
import org.springframework.stereotype.Repository;

@Repository
public interface SourceDescMapper {
    RoomSourceDesc selectByDescId(int descId);
}
