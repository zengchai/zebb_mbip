package com.utm.ip.zebb.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String greet(){
        return "home";
    }

    @RequestMapping("/register")
    public String register(){
        return "registration";
    }
    
    @RequestMapping("/login")
    public String login(){
        return "home";
    }

    @RequestMapping("/editprofile")
    public String editprofile(){
        return "editprofile";
    }
}
