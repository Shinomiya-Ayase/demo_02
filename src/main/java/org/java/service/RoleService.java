package org.java.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.java.entity.Role;

import java.util.List;
import java.util.Map;

public interface RoleService extends IService<Role> {
    List<Map> select();
}
