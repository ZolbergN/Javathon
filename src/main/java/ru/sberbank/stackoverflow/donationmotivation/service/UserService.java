package ru.sberbank.stackoverflow.donationmotivation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import ru.sberbank.stackoverflow.donationmotivation.domain.Role;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;
import ru.sberbank.stackoverflow.donationmotivation.repos.UserRepo;

import java.util.Collections;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    //@Autowired
    //private MailService mailService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepo.findByUsername(username);
    }

    public boolean addUser(User user) {
        User usrFromDb = userRepo.findByUsername(user.getUsername());

        if (usrFromDb != null) {
            return false;
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        user.setActivationCode(UUID.randomUUID().toString());

        userRepo.save(user);

        sendActivationCode(user);

        return true;
    }

    private void sendActivationCode(User user) {
        if (!StringUtils.isEmpty(user.getEmail())) {
            String message = String.format(
                    "Hello, %s!\nPlease activate your account via this link: http://localhost:8080/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );

            //mailService.send(user.getEmail(), "Activate your account", message);
        }
    }
}