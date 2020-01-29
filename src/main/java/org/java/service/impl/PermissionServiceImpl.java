package org.java.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.java.dao.PermissionMapper;
import org.java.entity.Permission;
import org.java.service.PermissionService;
import org.springframework.stereotype.Service;

@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission>
        implements PermissionService {
}
