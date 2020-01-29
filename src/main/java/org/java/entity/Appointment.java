package org.java.entity;

import java.util.Date;

public class Appointment {
    private Integer appId;

    private Integer appResumeId;

    private String appName;

    private Integer appPrincipalId;

    private String appDetail;

    private Integer appointmentorId;

    private Date appInterviewTime;

    private String appWriter;

    private String interAssessment;

    public Appointment(Integer appId, Integer appResumeId, String appName, Integer appPrincipalId, String appDetail, Integer appointmentorId, Date appInterviewTime, String appWriter, String interAssessment) {
        this.appId = appId;
        this.appResumeId = appResumeId;
        this.appName = appName;
        this.appPrincipalId = appPrincipalId;
        this.appDetail = appDetail;
        this.appointmentorId = appointmentorId;
        this.appInterviewTime = appInterviewTime;
        this.appWriter = appWriter;
        this.interAssessment = interAssessment;
    }

    public Appointment() {
        super();
    }

    public Integer getAppId() {
        return appId;
    }

    public void setAppId(Integer appId) {
        this.appId = appId;
    }

    public Integer getAppResumeId() {
        return appResumeId;
    }

    public void setAppResumeId(Integer appResumeId) {
        this.appResumeId = appResumeId;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName == null ? null : appName.trim();
    }

    public Integer getAppPrincipalId() {
        return appPrincipalId;
    }

    public void setAppPrincipalId(Integer appPrincipalId) {
        this.appPrincipalId = appPrincipalId;
    }

    public String getAppDetail() {
        return appDetail;
    }

    public void setAppDetail(String appDetail) {
        this.appDetail = appDetail == null ? null : appDetail.trim();
    }

    public Integer getAppointmentorId() {
        return appointmentorId;
    }

    public void setAppointmentorId(Integer appointmentorId) {
        this.appointmentorId = appointmentorId;
    }

    public Date getAppInterviewTime() {
        return appInterviewTime;
    }

    public void setAppInterviewTime(Date appInterviewTime) {
        this.appInterviewTime = appInterviewTime;
    }

    public String getAppWriter() {
        return appWriter;
    }

    public void setAppWriter(String appWriter) {
        this.appWriter = appWriter == null ? null : appWriter.trim();
    }

    public String getInterAssessment() {
        return interAssessment;
    }

    public void setInterAssessment(String interAssessment) {
        this.interAssessment = interAssessment == null ? null : interAssessment.trim();
    }
}