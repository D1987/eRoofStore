package com.eroofstore.service.impl;


import com.eroofstore.dao.ProductDao;
import com.eroofstore.model.Product;
import com.eroofstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;


    public List<Product> getProductList() {
        return productDao.getProductList();
    }

    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void editProduct(Product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }
}
