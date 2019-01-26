package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.sberbank.stackoverflow.donationmotivation.domain.Target;
import ru.sberbank.stackoverflow.donationmotivation.domain.TargetState;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.service.TargetService;

import java.util.Map;

@Controller
@RequestMapping("/target")
@PreAuthorize("USER")
public class TargetController {
    @Autowired
    private TargetService targetService;

    @GetMapping("/all")
    public String displayAllTargets(Map<String, Object> model, @AuthenticationPrincipal User user){

        model.put("targets", targetService.getTargets(user.getId()));

        return "target";
    }

    @GetMapping("/add")
    public String addTargetPage(){
        return "addtarget";
    }

    @PostMapping("/add")
    public String createTarget(Target target, Map<String, Object> model, @AuthenticationPrincipal User user){

        target.setUser_id(user.getId());
        target.setState(TargetState.ACTIVE);
        targetService.addTarget(target);

        return "success";
    }
}
