package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.sberbank.stackoverflow.donationmotivation.domain.Role;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.repos.UserRepo;
import ru.sberbank.stackoverflow.donationmotivation.service.UserService;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    UserService userService;

    @GetMapping("/register")
    public String registerPage() {
        return "registration";
    }

    @PostMapping("/register")
    public String regUser(User user, Map<String, Object> model) {

        if (!userService.addUser(user)) {
            model.put("message", "User already exists!");
            return "registration";
        }

        return "redirect:/login";
    }

}
