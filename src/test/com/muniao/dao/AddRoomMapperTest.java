package com.muniao.dao;

import com.muniao.entity.Room;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by XiaBing on 2018/6/13 (17:52)
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AddRoomMapperTest {
    @Autowired
    private AddRoomMapper addRoomDAO;
    @Test
    public void addRoomStep1() throws Exception {

        Room room = new Room();
        room.setTitle("夏冰测试");
        room.setPrice(300.0);
        addRoomDAO.addRoomStep1(room);
        Integer roomid = room.getRoomid();
        System.out.println(roomid);
    }

    @Test
    public void updateRoomStep2() throws Exception {

        Room room = new Room();
        room.setTitle("夏冰测试标题");
        room.setRoomid(286);
        addRoomDAO.updateRoomStep2(room);
        System.out.println("测试完成");
    }

    @Test
    public void updateRoomStep3() throws Exception {

        Room room = new Room();
        room.setRzyq("房东要求测试");
        room.setRoomid(287);
        addRoomDAO.updateRoomStep3(room);
        System.out.println("测试完成");
    }

    @Test
    public void updateRoomStep4() throws Exception {

        Room room = new Room();
        room.setSupport("[1,2,3,4,5,6,7]");
        room.setRoomid(287);
        addRoomDAO.updateRoomStep4(room);
        System.out.println("测试完成");
    }

    @Test
    public void updateRoomStep5() throws Exception {

        Room room = new Room();
        room.setFyms("房源描述");
        room.setRoomid(286);
        addRoomDAO.updateRoomStep5(room);
        System.out.println("测试完成");
    }



}