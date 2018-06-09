package com.muniao.dao;

import com.muniao.entity.RoomImage;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 史国纲 2018/6/8
 * 图片
 */
@Repository
public interface RoomImgMapper {
    List<RoomImage> selectAllByRoomId(int imgId);
}
