package com.muniao.service;


import com.muniao.entity.Image;

import java.util.List;

public interface RoomImgService {
    List<Image> selectAllByRoomId(int imgId);

    void insertImage(Image image);
}
