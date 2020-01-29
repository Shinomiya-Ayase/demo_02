package org.java.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;
import org.java.entity.User;

import java.util.List;
import java.util.Map;

public interface UserMapper extends BaseMapper<User> {
    @Select("select * from showAllUser")
    List<Map> showAllUser();
}