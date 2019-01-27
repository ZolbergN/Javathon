package ru.sberbank.stackoverflow.donationmotivation.domain;

import javax.persistence.*;

@Entity
@Table(name = "transatctions")
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private long targetid;
    private long orgid;
    private Long cost;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getTargetid() {
        return targetid;
    }

    public void setTargetid(long targetid) {
        this.targetid = targetid;
    }

    public long getOrgid() {
        return orgid;
    }

    public void setOrgid(long orgid) {
        this.orgid = orgid;
    }

    public Long getCost() {
        return cost;
    }

    public void setCost(Long cost) {
        this.cost = cost;
    }
}
