package ru.sberbank.stackoverflow.donationmotivation.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.sberbank.stackoverflow.donationmotivation.domain.Transaction;

import java.util.List;

public interface TransactionRepo extends JpaRepository<Transaction, Long> {
    List<Transaction> findByTargetid(Long targetid);
}