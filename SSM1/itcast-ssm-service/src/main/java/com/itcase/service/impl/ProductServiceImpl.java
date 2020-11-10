package com.itcase.service.impl;

import com.itcase.dao.IProductDao;
import com.itcase.domain.Product;
import com.itcase.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ProductServiceImpl implements IProductService {
    @Autowired
    private IProductDao iProductDao;

    @Override
    public List<Product> findAll() throws Exception {
        List<Product> products=iProductDao.findAll();

        return products;
    }

    @Override
    public void saveProduct(Product product) throws Exception {
        iProductDao.saveProduct(product);
    }
}
