package com.muniao.service.Impl;

import com.muniao.dao.AddRoomMapper;
import com.muniao.entity.Room;
import com.muniao.entity.User;
import com.muniao.service.AddRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by XiaBing on 2018/6/13 (20:48)
 * 房源添加 service层 实现类（待处理：床位信息 收费项目 images）
 */
@Service
@Transactional
public class AddRoomServiceImpl implements AddRoomService{

    @Autowired
    private AddRoomMapper addRoomDAO;

    @Override
    public void AddRoomServiceStep1(User user, Room room) {
        int userId = user.getUserId();
        // 用户id
        room.setUser_id(userId);

        // 特色主题（因无房源审核功能，暂时写死，如果有审核功能，可由管理员审核确定房源主题）
        room.setRoom_feature_id(1);

        addRoomDAO.addRoomStep1(room);
    }

    @Override
    public void AddRoomServiceStep2(Room room) {

        addRoomDAO.updateRoomStep2(room);

        // 还需要处理床位信息的添加功能
    }

    @Override
    public void AddRoomServiceStep3(Room room) {

        // 价格区间（通过价格写入房间的价格区间值）
        Double roomPrice = room.getPrice();
        if (roomPrice == null){
            roomPrice = 0.0;
        }
        int interval = 0;
        if (roomPrice >= 0 && roomPrice < 100){
            interval = 1;
        } else if (roomPrice >= 100 && roomPrice < 200){
            interval = 2;
        } else if (roomPrice >= 200 && roomPrice < 300){
            interval = 3;
        } else if (roomPrice >= 300 && roomPrice < 400){
            interval = 4;
        } else if (roomPrice >= 400 && roomPrice < 500){
            interval = 5;
        } else if (roomPrice >= 500 && roomPrice < 600){
            interval = 6;
        } else if (roomPrice >= 600 && roomPrice < 700){
            interval = 7;
        } else if (roomPrice >= 700 && roomPrice < 800){
            interval = 8;
        } else if (roomPrice >= 800 && roomPrice < 900){
            interval = 9;
        } else if (roomPrice >= 900 && roomPrice < 1000){
            interval = 10;
        } else if (roomPrice >= 1000){
            interval = 11;
        } else {
            interval = 1;
        }
        room.setPrice_interval_id(interval);

        addRoomDAO.updateRoomStep3(room);
    }

    @Override
    public void AddRoomServiceStep4(Room room) {

        addRoomDAO.updateRoomStep4(room);
        // 需要处理收费项目的业务
    }

    @Override
    public void AddRoomServiceStep5(Room room) {

        addRoomDAO.updateRoomStep5(room);
        // 需要处理images业务
    }

    @Override
    public void deleteRoomByRoomid(int roomid) {
        addRoomDAO.deleteRoomByRoomid(roomid);
    }
}
