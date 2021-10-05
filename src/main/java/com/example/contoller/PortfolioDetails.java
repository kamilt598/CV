package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PortfolioDetails {
    @RequestMapping(value = {"/portfolio-details"}, method = RequestMethod.GET)
    public String getPortfolio() {
        return "portfolio-details";
    }
}
