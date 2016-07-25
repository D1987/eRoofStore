package com.eroofstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout",
            required = false)  String logout, Model model) {
       if (error!=null){
           model.addAttribute("error","Неправильный логин/пароль");
       }

        if (logout!=null){
            model.addAttribute("logout","Вы вышли успешно");
        }
        return "login";
    }
}
