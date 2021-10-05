package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Contact {
    @RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
    public String getContact() {
        return "contact";
    }
}
