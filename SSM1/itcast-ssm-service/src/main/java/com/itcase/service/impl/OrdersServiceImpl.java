package com.itcase.service.impl;

import com.github.pagehelper.PageHelper;
import com.itcase.dao.IOrdersDao;
import com.itcase.domain.Orders;
import com.itcase.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class OrdersServiceImpl implements IOrdersService {

    @Autowired
    private IOrdersDao ordersDao;

    @Override
    public List<Orders> findAllByPage(int page, int pageSize) throws Exception {
        PageHelper.startPage(page,pageSize);
        List<Orders> orders=ordersDao.findAll();
        return orders;
    }

    @Override
    public Orders findAllById(String id) throws Exception{
        Orders order=ordersDao.findById(id);
        return order;
    }
}
