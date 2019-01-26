package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/hello")
    public String Index() {
        return "index";
    }

}
