package ru.sberbank.stackoverflow.donationmotivation.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.sberbank.stackoverflow.donationmotivation.domain.Target;

import java.util.List;

public interface TargetRepo extends JpaRepository<Target, Long> {
    List<Target> findByUserid(Long userId);
    Target findFirstById(Long targetId);
}
