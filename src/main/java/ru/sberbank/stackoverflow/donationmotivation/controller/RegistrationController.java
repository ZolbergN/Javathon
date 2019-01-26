package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.sberbank.stackoverflow.donationmotivation.domain.Role;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.repos.UserRepo;

import java.util.Collections;
import java.util.Map;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping()
    public String registerPage() {
        return "registration";
    }

    @PostMapping()
    public String regUser(User user, Map<String, Object> model) {
        User usrFromDb = userRepo.findByUsername(user.getUsername());

        if (usrFromDb != null) {
            model.put("message", "User already exists!");
            return "registration";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));

        return "redirect:/login";
    }

}
