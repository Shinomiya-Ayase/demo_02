package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Data;
import lombok.SneakyThrows;

@Data
public class Menu {
    @TableId(type = IdType.AUTO)
    private Integer id;

    private String name;

    private String parentId;

    private String css;

    private String menuUrl;

    @SneakyThrows
    public String toString(){
        return new ObjectMapper().writeValueAsString(this);
    }
}