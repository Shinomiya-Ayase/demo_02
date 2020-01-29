package org.java.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.java.dao.MenuMapper;
import org.java.entity.Menu;
import org.java.service.MenuService;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {
}
