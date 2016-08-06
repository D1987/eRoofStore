package com.eroofstore.service;

import com.eroofstore.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
