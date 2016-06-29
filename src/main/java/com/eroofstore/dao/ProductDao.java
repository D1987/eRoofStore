package com.eroofstore.dao;

import com.eroofstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();

        product1.setProductName("Черепица");
        product1.setProductId("P1");
        product1.setProductCategory("Крыша");
        product1.setProductDescription("Черепица для крыши");
        product1.setProductPrice(1200);
        product1.setProductCondition("Новая");
        product1.setProductStatus("В наличии");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("РФ");


        Product product2 = new Product();
        product2.setProductId("P2");
        product2.setProductName("Шифер");
        product2.setProductCategory("Крыша");
        product2.setProductDescription("Шифер для крыши");
        product2.setProductPrice(900);
        product2.setProductCondition("Новая");
        product2.setProductStatus("В наличии");
        product2.setUnitInStock(5);
        product2.setProductManufacturer("РФ");


        Product product3 = new Product();
        product3.setProductId("P3");
        product3.setProductName("Стек");
        product3.setProductCategory("Стена");
        product3.setProductDescription("Стек с крыши");
        product3.setProductPrice(1000);
        product3.setProductCondition("Новая");
        product3.setProductStatus("Нет в наличии");
        product3.setUnitInStock(0);
        product3.setProductManufacturer("РБ");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        return productList;
    }


    public Product getProductById(String productId) throws IOException {
        for (Product product: getProductList()){
            if (product.getProductId().equals(productId)){
                return product;
            }
        }
        throw new IOException("Товар не найден.");
    }
}
