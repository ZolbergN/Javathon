package ru.sberbank.stackoverflow.donationmotivation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.sberbank.stackoverflow.donationmotivation.domain.Target;
import ru.sberbank.stackoverflow.donationmotivation.domain.TargetState;
import ru.sberbank.stackoverflow.donationmotivation.domain.Transaction;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.repos.OrganisationRepo;
import ru.sberbank.stackoverflow.donationmotivation.service.OrganisationService;
import ru.sberbank.stackoverflow.donationmotivation.service.TargetService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping("/target")
@PreAuthorize("USER")
public class TargetController {
    @Autowired
    private TargetService targetService;
    @Autowired
    private OrganisationService organisationService;

    @GetMapping("/all")
    public String displayAllTargets(Map<String, Object> model, @AuthenticationPrincipal User user){

        model.put("targets", targetService.getTargets(user.getId()));

        return "target";
    }

    @GetMapping("/show/{targetId}")
    public String displayTargetById(Map<String, Object> model, @PathVariable(name = "targetId") Long targetId){

        model.put("target", targetService.getTargetById(targetId));

        return "targetpage";
    }

    @GetMapping("/donate/{targetId}/{type}")
    public String approve(Map<String, Object> model,@PathVariable(name = "type") String type, @PathVariable(name = "targetId") Long targetId){

        if (type.equals("take")){
            targetService.changeState(targetId, TargetState.COMPLETE_REJECTED);
        } else if (type.equals("donate")){
            targetService.changeState(targetId, TargetState.COMPLETE_PAYED);
        } else {
            return "fail";
        }

        return "success";
    }

    @GetMapping("/add")
    public String addTargetPage(Map<String, Object> model){
        model.put("org", organisationService.getAll());
        return "addtarget";
    }

    @PostMapping("/add")
    public String createTarget(@RequestParam(name = "name") String targetName,
                               @RequestParam(name = "description") String description,
                               @RequestParam(name = "cost") Long cost,
                               @RequestParam(name = "orgId") Long orgId,
                               @RequestParam(name = "endDate") String endDate,
                               @RequestParam(name = "cardnumber") String cardnumber,
                               @RequestParam(name = "cardname") String cardname,
                               @RequestParam(name = "mount") String mount,
                               @RequestParam(name = "year") String year,
                               @RequestParam(name = "cvv") String cvv,
                               Map<String, Object> model,
                               @AuthenticationPrincipal User user){
        Target target = new Target();
        target.setName(targetName);
        target.setDescription(description);
        target.setCost(cost);
        target.setCreatedate(new Date());
        target.setUser_id(user.getId());
        target.setState(TargetState.ACTIVE);
        DateFormat format = new SimpleDateFormat("dd.MM.yyyy");

        try{
            target.setExpiredate(format.parse(endDate));
        } catch (Exception ex) {
            ex.printStackTrace();
            return "fail";
        }

        target.setUser_id(user.getId());
        target.setState(TargetState.ACTIVE);

        targetService.addTarget(target, orgId);

        return "success";
    }
}
