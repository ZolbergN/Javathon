package ru.sberbank.stackoverflow.donationmotivation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import ru.sberbank.stackoverflow.donationmotivation.domain.Role;
import ru.sberbank.stackoverflow.donationmotivation.domain.Target;
import ru.sberbank.stackoverflow.donationmotivation.domain.TargetState;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.repos.TargetRepo;
import ru.sberbank.stackoverflow.donationmotivation.repos.UserRepo;

import java.util.Collections;
import java.util.List;
import java.util.UUID;

@Service
public class TargetService {
    @Autowired
    private TargetRepo targetRepo;

    public boolean addTarget(Target target) {

        targetRepo.save(target);

        return true;
    }

    public List<Target> getTargets(Long userid) {

        return targetRepo.findByUserid(userid);
    }
}