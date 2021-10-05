package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Services {
    @RequestMapping(value = {"/services"}, method = RequestMethod.GET)
    public String getServices() {
        return "services";
    }
}
