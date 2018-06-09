package com.muniao.service.Impl;

import com.muniao.dao.RoomImgMapper;
import com.muniao.entity.RoomImage;
import com.muniao.service.RoomImgService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 史国纲 2018/6/8
 */
@Service
@Transactional
public class RoomImgServiceImpl implements RoomImgService{
    @Resource private RoomImgMapper roomImgDao;

    @Override
    public List<RoomImage> selectAllByRoomId(int imgId) {
        return roomImgDao.selectAllByRoomId(imgId);
    }
}
