package com.eroofstore.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Dima on 06.07.16.
 */
public class LoginController {

    @RequestMapping("/login")
    public String login(@RequestParam (value = "error", required = false) String error,
                        @RequestParam (value = "logout", required = false) String logout, Model model)
    {
        if (error!=null){
            model.addAttribute("error", "Неверный логин пароль!");
        }
         if (logout!=null){
             model.addAttribute("msg", "Вышли успешно!");
         }
        return "login";
    }
}
