package com.itcase.service;

import com.itcase.domain.Orders;
import org.springframework.stereotype.Service;

import java.util.List;
public interface IOrdersService {

    List<Orders> findAllByPage(int page,int pageSize) throws Exception;

    Orders findAllById(String id)throws Exception;
}
