package com.muniao.service.Impl;

import com.muniao.dao.RoomMapper;
import com.muniao.entity.Room;
import com.muniao.service.RoomService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 史国纲 2018/6/7
 */
@Service
@Transactional
public class RoomServiceImpl implements RoomService{
    @Resource
    private RoomMapper roomDao;

    @Override
    public List<Room> findAllByFeature(int featureId) {
        return roomDao.findByFeature(featureId);
    }

    @Override
    public List<Room> findByFeatureCity(int featureId, String roomLocation) {
        return roomDao.findByFeatureCity(featureId,roomLocation);
    }

    @Override
    public List<Room> findByCityList(int featureId) {
        return roomDao.findByCityList(featureId);
    }

    @Override
    public Integer CountFeatureList(int featureId) {
        return roomDao.CountFeatureList(featureId);
    }


}
