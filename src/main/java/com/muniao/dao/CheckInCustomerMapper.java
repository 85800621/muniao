package com.muniao.dao;

import com.muniao.entity.CheckInCustomer;
import org.springframework.stereotype.Repository;

/**
 * @Author Scot
 * @Date 2018/6/17 15:11
 * @Name com.muniao.dao
 * @Description:
 **/
@Repository
public interface CheckInCustomerMapper {
    void insertOneCheckInCustomer(CheckInCustomer checkInCustomer);

}
