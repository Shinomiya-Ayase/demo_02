package org.java.web;

import org.java.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class RoleController {
    @Autowired
    private RoleService roleService;

    @GetMapping("showAllRoles")
    public List<Map> showAllRoles(){
        return roleService.select();
    }
}
