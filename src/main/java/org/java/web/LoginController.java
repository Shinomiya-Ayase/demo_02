package org.java.web;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.pagehelper.PageInfo;
import org.java.entity.User;
import org.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class LoginController {
    @Autowired
    HttpSession session;
    @Autowired
    UserService userService;
    @PostMapping("login")
    public boolean login(User user){
        User one = userService.getOne(new QueryWrapper<User>()
                .eq("username", user.getUsername())
                .eq("user_pwd", user.getUserPwd()));
        if(one==null){
            return false;
        }
        session.setAttribute("user",one);
        return true;
    }

    @PostMapping("showAllUser/{index}")
    public PageInfo showAllUser(@PathVariable int index){
        return userService.showAllUser(index);
    }
}
