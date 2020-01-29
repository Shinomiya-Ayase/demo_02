package org.java.entity;

import lombok.Data;

import java.util.Date;
@Data
public class Project {
    private Integer projectId;

    private Integer departmentId;

    private String projectName;

    private Integer projectmanageId;

    private Integer projectHelperId;

    private String phone;

    private String linkman;

    private Date projectStartTime;

    private Date projectEndTime;

    private String projectdesc;
}