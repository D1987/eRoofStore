package com.eroofstore.dao;

import com.eroofstore.model.Product;

import java.util.List;

public interface ProductDao {

    void addProduct(Product product);
    void editProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProduct(String id);
}
