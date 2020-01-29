package org.java.entity;

import java.util.Date;

public class Resume {
    private Integer resumeId;

    private String resumeName;

    private String resumePhone;

    private String resumeTel;

    private Date resumeBir;

    private String resumeGender;

    private Integer resumeLangId;

    private Integer resumeLantypeId;

    private Date educationTime;

    private Integer educationId;

    private Integer resumeResourceId;

    private Integer resumeChannelId;

    private Integer positionId;

    private Integer postId;

    private Date postTime;

    private Date arriveTime;

    private String resumeCollege;

    private String idcard;

    private String resumeMajor;

    private String background;

    private String skills;

    private String hukoulocation;

    private Integer worktime;

    private String txtresume;

    public Resume(Integer resumeId, String resumeName, String resumePhone, String resumeTel, Date resumeBir, String resumeGender, Integer resumeLangId, Integer resumeLantypeId, Date educationTime, Integer educationId, Integer resumeResourceId, Integer resumeChannelId, Integer positionId, Integer postId, Date postTime, Date arriveTime, String resumeCollege, String idcard, String resumeMajor, String background, String skills, String hukoulocation, Integer worktime, String txtresume) {
        this.resumeId = resumeId;
        this.resumeName = resumeName;
        this.resumePhone = resumePhone;
        this.resumeTel = resumeTel;
        this.resumeBir = resumeBir;
        this.resumeGender = resumeGender;
        this.resumeLangId = resumeLangId;
        this.resumeLantypeId = resumeLantypeId;
        this.educationTime = educationTime;
        this.educationId = educationId;
        this.resumeResourceId = resumeResourceId;
        this.resumeChannelId = resumeChannelId;
        this.positionId = positionId;
        this.postId = postId;
        this.postTime = postTime;
        this.arriveTime = arriveTime;
        this.resumeCollege = resumeCollege;
        this.idcard = idcard;
        this.resumeMajor = resumeMajor;
        this.background = background;
        this.skills = skills;
        this.hukoulocation = hukoulocation;
        this.worktime = worktime;
        this.txtresume = txtresume;
    }

    public Resume() {
        super();
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName == null ? null : resumeName.trim();
    }

    public String getResumePhone() {
        return resumePhone;
    }

    public void setResumePhone(String resumePhone) {
        this.resumePhone = resumePhone == null ? null : resumePhone.trim();
    }

    public String getResumeTel() {
        return resumeTel;
    }

    public void setResumeTel(String resumeTel) {
        this.resumeTel = resumeTel == null ? null : resumeTel.trim();
    }

    public Date getResumeBir() {
        return resumeBir;
    }

    public void setResumeBir(Date resumeBir) {
        this.resumeBir = resumeBir;
    }

    public String getResumeGender() {
        return resumeGender;
    }

    public void setResumeGender(String resumeGender) {
        this.resumeGender = resumeGender == null ? null : resumeGender.trim();
    }

    public Integer getResumeLangId() {
        return resumeLangId;
    }

    public void setResumeLangId(Integer resumeLangId) {
        this.resumeLangId = resumeLangId;
    }

    public Integer getResumeLantypeId() {
        return resumeLantypeId;
    }

    public void setResumeLantypeId(Integer resumeLantypeId) {
        this.resumeLantypeId = resumeLantypeId;
    }

    public Date getEducationTime() {
        return educationTime;
    }

    public void setEducationTime(Date educationTime) {
        this.educationTime = educationTime;
    }

    public Integer getEducationId() {
        return educationId;
    }

    public void setEducationId(Integer educationId) {
        this.educationId = educationId;
    }

    public Integer getResumeResourceId() {
        return resumeResourceId;
    }

    public void setResumeResourceId(Integer resumeResourceId) {
        this.resumeResourceId = resumeResourceId;
    }

    public Integer getResumeChannelId() {
        return resumeChannelId;
    }

    public void setResumeChannelId(Integer resumeChannelId) {
        this.resumeChannelId = resumeChannelId;
    }

    public Integer getPositionId() {
        return positionId;
    }

    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }

    public Date getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(Date arriveTime) {
        this.arriveTime = arriveTime;
    }

    public String getResumeCollege() {
        return resumeCollege;
    }

    public void setResumeCollege(String resumeCollege) {
        this.resumeCollege = resumeCollege == null ? null : resumeCollege.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getResumeMajor() {
        return resumeMajor;
    }

    public void setResumeMajor(String resumeMajor) {
        this.resumeMajor = resumeMajor == null ? null : resumeMajor.trim();
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background == null ? null : background.trim();
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills == null ? null : skills.trim();
    }

    public String getHukoulocation() {
        return hukoulocation;
    }

    public void setHukoulocation(String hukoulocation) {
        this.hukoulocation = hukoulocation == null ? null : hukoulocation.trim();
    }

    public Integer getWorktime() {
        return worktime;
    }

    public void setWorktime(Integer worktime) {
        this.worktime = worktime;
    }

    public String getTxtresume() {
        return txtresume;
    }

    public void setTxtresume(String txtresume) {
        this.txtresume = txtresume == null ? null : txtresume.trim();
    }
}