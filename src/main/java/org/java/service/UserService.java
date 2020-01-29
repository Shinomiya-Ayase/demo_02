package org.java.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import org.java.entity.User;

import java.util.List;
import java.util.Map;

public interface UserService extends IService<User> {
    PageInfo showAllUser(int index);
}
