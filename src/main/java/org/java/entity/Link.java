package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Link {
    @TableId(type = IdType.AUTO)
    private Integer linkId;

    private String linkmanName;

    private String dutyone;

    private String officephoneone;

    private String mobilephoneone;

    private String homephoneone;

    private String emailone;

    private String msn;

    private String qq;
}