package com.muniao.dao;

import com.muniao.entity.RoomFeature;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 * 主题特色
 */
@Repository
public interface RoomFeatureMapper {
    RoomFeature selectByFeatureId(int featuroomFeatureId);
}
