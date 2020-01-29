package org.java.entity;

import java.util.Date;

public class Interview {
    private Integer interviewId;

    private Integer appId;

    private String interviewName;

    private String newjob;

    private String leaveoffice;

    private String workexperience;

    private String figure;

    private String logical;

    private String commTeam;

    private Integer writtentest;

    private Date interviewTime;

    private Integer income;

    private Integer interviewer;

    private Integer hopeSalary;

    private Integer treatSalary;

    private Date dutyTime;

    private String assessment;

    private String resumeState;

    private String interviewRemark;

    public Interview(Integer interviewId, Integer appId, String interviewName, String newjob, String leaveoffice, String workexperience, String figure, String logical, String commTeam, Integer writtentest, Date interviewTime, Integer income, Integer interviewer, Integer hopeSalary, Integer treatSalary, Date dutyTime, String assessment, String resumeState, String interviewRemark) {
        this.interviewId = interviewId;
        this.appId = appId;
        this.interviewName = interviewName;
        this.newjob = newjob;
        this.leaveoffice = leaveoffice;
        this.workexperience = workexperience;
        this.figure = figure;
        this.logical = logical;
        this.commTeam = commTeam;
        this.writtentest = writtentest;
        this.interviewTime = interviewTime;
        this.income = income;
        this.interviewer = interviewer;
        this.hopeSalary = hopeSalary;
        this.treatSalary = treatSalary;
        this.dutyTime = dutyTime;
        this.assessment = assessment;
        this.resumeState = resumeState;
        this.interviewRemark = interviewRemark;
    }

    public Interview() {
        super();
    }

    public Integer getInterviewId() {
        return interviewId;
    }

    public void setInterviewId(Integer interviewId) {
        this.interviewId = interviewId;
    }

    public Integer getAppId() {
        return appId;
    }

    public void setAppId(Integer appId) {
        this.appId = appId;
    }

    public String getInterviewName() {
        return interviewName;
    }

    public void setInterviewName(String interviewName) {
        this.interviewName = interviewName == null ? null : interviewName.trim();
    }

    public String getNewjob() {
        return newjob;
    }

    public void setNewjob(String newjob) {
        this.newjob = newjob == null ? null : newjob.trim();
    }

    public String getLeaveoffice() {
        return leaveoffice;
    }

    public void setLeaveoffice(String leaveoffice) {
        this.leaveoffice = leaveoffice == null ? null : leaveoffice.trim();
    }

    public String getWorkexperience() {
        return workexperience;
    }

    public void setWorkexperience(String workexperience) {
        this.workexperience = workexperience == null ? null : workexperience.trim();
    }

    public String getFigure() {
        return figure;
    }

    public void setFigure(String figure) {
        this.figure = figure == null ? null : figure.trim();
    }

    public String getLogical() {
        return logical;
    }

    public void setLogical(String logical) {
        this.logical = logical == null ? null : logical.trim();
    }

    public String getCommTeam() {
        return commTeam;
    }

    public void setCommTeam(String commTeam) {
        this.commTeam = commTeam == null ? null : commTeam.trim();
    }

    public Integer getWrittentest() {
        return writtentest;
    }

    public void setWrittentest(Integer writtentest) {
        this.writtentest = writtentest;
    }

    public Date getInterviewTime() {
        return interviewTime;
    }

    public void setInterviewTime(Date interviewTime) {
        this.interviewTime = interviewTime;
    }

    public Integer getIncome() {
        return income;
    }

    public void setIncome(Integer income) {
        this.income = income;
    }

    public Integer getInterviewer() {
        return interviewer;
    }

    public void setInterviewer(Integer interviewer) {
        this.interviewer = interviewer;
    }

    public Integer getHopeSalary() {
        return hopeSalary;
    }

    public void setHopeSalary(Integer hopeSalary) {
        this.hopeSalary = hopeSalary;
    }

    public Integer getTreatSalary() {
        return treatSalary;
    }

    public void setTreatSalary(Integer treatSalary) {
        this.treatSalary = treatSalary;
    }

    public Date getDutyTime() {
        return dutyTime;
    }

    public void setDutyTime(Date dutyTime) {
        this.dutyTime = dutyTime;
    }

    public String getAssessment() {
        return assessment;
    }

    public void setAssessment(String assessment) {
        this.assessment = assessment == null ? null : assessment.trim();
    }

    public String getResumeState() {
        return resumeState;
    }

    public void setResumeState(String resumeState) {
        this.resumeState = resumeState == null ? null : resumeState.trim();
    }

    public String getInterviewRemark() {
        return interviewRemark;
    }

    public void setInterviewRemark(String interviewRemark) {
        this.interviewRemark = interviewRemark == null ? null : interviewRemark.trim();
    }
}