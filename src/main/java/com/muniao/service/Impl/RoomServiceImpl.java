package com.muniao.service.Impl;

import com.muniao.dao.RoomMapper;
import com.muniao.entity.Room;
import com.muniao.service.RoomService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class RoomServiceImpl implements RoomService{
    @Resource
    private RoomMapper roomDao;

    @Override
    public List<Room> findAllByFeature(int featureId) {
        List<Room> list= roomDao.findByFeature(featureId);
        return list;
    }
}
