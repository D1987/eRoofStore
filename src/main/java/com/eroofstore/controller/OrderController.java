package com.eroofstore.controller;

import com.eroofstore.model.Cart;
import com.eroofstore.model.Customer;
import com.eroofstore.model.CustomerOrder;
import com.eroofstore.service.CartService;
import com.eroofstore.service.CustomerOrderService;
import com.eroofstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId/*, Model model*/) {
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        //customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        /*//my
        model.addAttribute("customerEn",customer);*/

        return "redirect:/checkout?cartId="+cartId;
    }
}