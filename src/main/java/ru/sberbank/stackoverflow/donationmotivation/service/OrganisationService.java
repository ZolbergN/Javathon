package ru.sberbank.stackoverflow.donationmotivation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.sberbank.stackoverflow.donationmotivation.domain.Organisation;
import ru.sberbank.stackoverflow.donationmotivation.repos.OrganisationRepo;

import java.util.List;

@Service
public class OrganisationService {
    @Autowired
    private OrganisationRepo organisationRepo;

    public List<Organisation> getAll() {
        return organisationRepo.findAll();
    }

}