package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Department {
    @TableId(type = IdType.AUTO)
    private Integer departmentId;

    private String departmentName;

    private String dutyUser;

    private String departmentDesc;
}