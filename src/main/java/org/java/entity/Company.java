package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Company {
    @TableId(type = IdType.AUTO)
    private Integer custNo;

    private String custCompany;
}