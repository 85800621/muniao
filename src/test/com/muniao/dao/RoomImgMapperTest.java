package com.muniao.dao;

import com.muniao.entity.Image;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by XiaBing on 2018/6/15 (11:02)
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class RoomImgMapperTest {
    @Autowired
    private RoomImgMapper roomImgDAO;
    @Test
    public void selectAllByRoomId() throws Exception {
        List<Image> roomImages = roomImgDAO.selectAllByRoomId(1);
        for (Image roomImage : roomImages) {
            String img_url = roomImage.getImg_url();
            System.out.println(img_url);
        }
    }

    @Test
    public void insertImage() throws Exception {
        Image image = new Image();
        image.setImg_url("test.jpg");
        image.setRoom_id(5);
        roomImgDAO.insertImage(image);
    }

}