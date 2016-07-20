package com.eroofstore.controller.admin;

import com.eroofstore.model.Product;
import com.eroofstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products",products);
        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagment(Model model){
        return "customerManagment";
    }

}
