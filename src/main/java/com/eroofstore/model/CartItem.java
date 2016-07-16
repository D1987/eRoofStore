package com.eroofstore.model;

public class CartItem {

    private Product product;
    private int quanity;
    private double totalPrice;

    public CartItem() {}

    public CartItem(Product product) {
        this.product = product;
        this.quanity = 1;
        this.totalPrice = product.getProductPrice();
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
