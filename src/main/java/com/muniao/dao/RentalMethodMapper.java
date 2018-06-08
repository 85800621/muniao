package com.muniao.dao;

import com.muniao.entity.RentalMethod;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7
 * 出租方式
 */
@Repository
public interface RentalMethodMapper {
    RentalMethod selectByMethodId(int methodId);
}
