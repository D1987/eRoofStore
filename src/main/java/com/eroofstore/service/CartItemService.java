package com.eroofstore.service;


import com.eroofstore.model.Cart;
import com.eroofstore.model.CartItem;

public interface CartItemService {

        void addCartItem(CartItem cartItem);

        void removeCartItem(CartItem cartItem);

        void removeAllCartItems(Cart cart);

        CartItem getCartItemByProductId(int productId);
}
