package com.muniao.service.Impl;

import com.muniao.service.RoomService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class RoomServiceImplTest {

    @Resource
    private RoomService roomService;
    @Test
    public void selectCountRoom() throws Exception {

//        Integer countRoom = roomService.selectCountRoom(1);
//        System.out.println(countRoom);
    }

}