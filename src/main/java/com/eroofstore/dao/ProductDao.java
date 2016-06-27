package com.eroofstore.dao;

import com.eroofstore.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();

        product1.setProductName("Черепица");
        product1.setProductCategory("Крыша");
        product1.setProductDescription("Черепица для крыши");
        product1.setProductPrice(1200);
        product1.setProductCondition("Новая");
        product1.setProductStatus("В наличии");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("РФ");

        productList = new ArrayList<Product>();
        productList.add(product1);
        return productList;
    }


}
