package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;

@Controller
public class MainController {

    @GetMapping("/")
    public String Index(@AuthenticationPrincipal User user) {
        return "index";
    }

}
