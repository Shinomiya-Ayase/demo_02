package org.java.web;

import org.java.service.CompanyService;
import org.java.service.DepartmentService;
import org.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class ReController {
    @Autowired
    private UserService userService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private DepartmentService departmentService;
    @GetMapping("bindSelect")
    public Map bindSelect(){
        Map map = new HashMap();
        map.put("user",userService.list());
        map.put("company",companyService.list());
        map.put("department",departmentService.list());
        return map;
    }
}
