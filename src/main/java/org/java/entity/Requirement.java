package org.java.entity;

import lombok.Data;

import java.util.Date;
@Data
public class Requirement {
    private Integer requirementId;

    private String requirementName;

    private Integer departmentId;

    private Integer projectId;

    private Integer rePopulation;

    private Integer custCompanyId;

    private Integer custmangerId;

    private String rePhone;

    private Date reStartTime;

    private Date reEndTime;

    private String reDesc;

    private String reRemark;

    private Integer reStationId;
}