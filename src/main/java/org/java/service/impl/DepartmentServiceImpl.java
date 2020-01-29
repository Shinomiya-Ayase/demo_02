package org.java.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.java.dao.DepartmentMapper;
import org.java.entity.Department;
import org.java.service.DepartmentService;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department>
        implements DepartmentService {
}
