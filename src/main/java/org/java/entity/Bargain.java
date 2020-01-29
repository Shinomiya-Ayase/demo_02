package org.java.entity;

import java.util.Date;

public class Bargain {
    private Integer bargainNo;

    private String bargainName;

    private Date baDate;

    public Bargain(Integer bargainNo, String bargainName, Date baDate) {
        this.bargainNo = bargainNo;
        this.bargainName = bargainName;
        this.baDate = baDate;
    }

    public Bargain() {
        super();
    }

    public Integer getBargainNo() {
        return bargainNo;
    }

    public void setBargainNo(Integer bargainNo) {
        this.bargainNo = bargainNo;
    }

    public String getBargainName() {
        return bargainName;
    }

    public void setBargainName(String bargainName) {
        this.bargainName = bargainName == null ? null : bargainName.trim();
    }

    public Date getBaDate() {
        return baDate;
    }

    public void setBaDate(Date baDate) {
        this.baDate = baDate;
    }
}