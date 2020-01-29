package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Dict {
    @TableId(type = IdType.AUTO)
    private Integer dictId;

    private String dictType;

    private String dictItem;
}