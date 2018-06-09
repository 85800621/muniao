package com.muniao.service.Impl;

import com.muniao.dao.RoomFeatureMapper;
import com.muniao.entity.RoomFeature;
import com.muniao.service.RoomFeatureService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 史国纲 2018/6/8
 */
@Service
@Transactional
public class FeatureServiceImpl implements RoomFeatureService{
    @Resource private RoomFeatureMapper roomFeatureDao;
    @Override
    public RoomFeature selectFeature(int featureId) {
        return  roomFeatureDao.selectByFeatureId(featureId);
    }
}
