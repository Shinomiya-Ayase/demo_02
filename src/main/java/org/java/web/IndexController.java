package org.java.web;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.java.entity.*;
import org.java.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
public class IndexController {
    @Autowired
    private MenuService menuService;
    @Autowired
    private DictService dictService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private ChannelTypeService channelTypeService;
    @Autowired
    private PermissionService permissionService;

    @GetMapping("loadMenu")
    public Map<Menu,List<Menu>> loadMenu(){
        List<Menu> list = menuService.list(new QueryWrapper<Menu>().eq("parent_id", 0));
        List<Menu> subMenu = menuService.list(new QueryWrapper<Menu>().ne("parent_id", 0));
        Map<Menu,List<Menu>> map = new LinkedHashMap<>();
        for (Menu menu : list) {
            List<Menu> pList = new ArrayList<>();
            for (Menu m : subMenu) {
                if(m.getParentId().equals(menu.getMenuUrl())){
                    pList.add(m);
                }
            }
            map.put(menu,pList);
        }
        return map;
    }

    @GetMapping("findDict")
    public List<Dict> findDict(){
        return dictService.list();
    }

    @GetMapping("loadChannelType")
    public List<ChannelType> loadChannelType(){
        return channelTypeService.list();
    }

    @GetMapping("showRoles")
    public List<Role> showRoles(){
        return roleService.list();
    }

    @GetMapping("showDeps")
    public List<Department> showDeps(){
        return departmentService.list();
    }

    @GetMapping("showAllPermissions")
    public List<Permission> showAllPermissions(){
        return permissionService.list();
    }
}
