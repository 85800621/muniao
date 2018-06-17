package com.muniao.service.Impl;

import com.muniao.dao.CheckInCustomerMapper;
import com.muniao.entity.CheckInCustomer;
import com.muniao.service.CheckInCustomerService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @Author Scot
 * @Date 2018/6/17 15:14
 * @Name com.muniao.service.Impl
 * @Description:
 **/

@Service
@Transactional
public class CheckInCustomerServiceImpl implements CheckInCustomerService{
    @Resource
    private CheckInCustomerMapper checkInCustomerDao;
    @Override
    public void insertOneCheckInCustomer(CheckInCustomer checkInCustomer) {
        checkInCustomerDao.insertOneCheckInCustomer(checkInCustomer);

    }
}
