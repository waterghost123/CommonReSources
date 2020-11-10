package com.itcase.service;

import com.itcase.domain.Product;


import java.util.List;

public interface IProductService {


    List<Product> findAll() throws Exception;

     void saveProduct(Product product)throws Exception;
}
