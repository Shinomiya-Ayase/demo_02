package org.java.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;
import org.java.entity.Role;

import java.util.List;
import java.util.Map;

public interface RoleMapper extends BaseMapper<Role> {
    @Select("select * from pm")
    List<Map> select();
}