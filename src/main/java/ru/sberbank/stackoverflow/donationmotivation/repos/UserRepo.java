package ru.sberbank.stackoverflow.donationmotivation.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.sberbank.stackoverflow.donationmotivation.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
