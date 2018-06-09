package com.muniao.service;


import com.muniao.entity.RoomImage;

import java.util.List;

public interface RoomImgService {
    List<RoomImage> selectAllByRoomId(int imgId);
}
