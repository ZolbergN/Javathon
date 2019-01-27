package ru.sberbank.stackoverflow.donationmotivation.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.sberbank.stackoverflow.donationmotivation.domain.Organisation;

import java.util.List;

public interface OrganisationRepo extends JpaRepository<Organisation, Long> {
    List<Organisation> findAll();
}
