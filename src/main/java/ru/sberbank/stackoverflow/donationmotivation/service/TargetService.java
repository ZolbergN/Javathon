package ru.sberbank.stackoverflow.donationmotivation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import ru.sberbank.stackoverflow.donationmotivation.domain.*;
import ru.sberbank.stackoverflow.donationmotivation.repos.TargetRepo;
import ru.sberbank.stackoverflow.donationmotivation.repos.TransactionRepo;
import ru.sberbank.stackoverflow.donationmotivation.repos.UserRepo;

import java.util.Collections;
import java.util.List;
import java.util.UUID;

@Service
public class TargetService {
    @Autowired
    private TargetRepo targetRepo;
    @Autowired
    private TransactionRepo transactionRepo;

    public boolean addTarget(Target target, Long orgId) {

        Transaction t = new Transaction();
        t.setCost(target.getCost());
        t.setOrgid(orgId);
        t.setTargetid(target.getId());

        transactionRepo.save(t);
        targetRepo.save(target);

        return true;
    }

    public void changeState(Long targetId,TargetState state) {
        Target t = targetRepo.findFirstById(targetId);
        t.setState(state);
        targetRepo.save(t);

    }

    public List<Target> getTargets(Long userid) {

        return targetRepo.findByUserid(userid);
    }

    public Target getTargetById(Long targetId) {

        return targetRepo.findFirstById(targetId);
    }
}