package com.eroofstore.dao.impl;

import com.eroofstore.dao.CartDao;
import com.eroofstore.model.Cart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartDaoImpl implements CartDao {

    private Map<String, Cart> listOfCarts;

    public CartDaoImpl(){
        listOfCarts = new HashMap<String, Cart>();
    }

    public Cart create(Cart cart) {

        if (listOfCarts.keySet().contains(cart.getCartId())){
            throw new IllegalArgumentException(String.format("Нельзя создать корзину. Корзина с таким id{%}" +
            "уже существует", cart.getCartId()));
        }

        listOfCarts.put(cart.getCartId(), cart);

        return cart;
    }

    public Cart read(String cartId) {
        return listOfCarts.get(cartId);
    }

    public void update(String cartId, Cart cart) {

        if (!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Нельзя обновить корзину. Корзина с таким id{%}" +
                    "не существует", cart.getCartId()));
        }

        listOfCarts.put(cartId, cart);
    }

    public void delete(String cartId) {

        if (!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Нельзя удалить корзину. Корзина с таким id{%}" +
                    "не существует", cartId));
        }

        listOfCarts.remove(cartId);
    }
}
