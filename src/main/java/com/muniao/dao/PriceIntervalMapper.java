package com.muniao.dao;

import com.muniao.entity.RoomPriceInterval;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 */
@Repository
public interface PriceIntervalMapper {
    RoomPriceInterval selectByIntervalId(int priceIntervalId);
}
