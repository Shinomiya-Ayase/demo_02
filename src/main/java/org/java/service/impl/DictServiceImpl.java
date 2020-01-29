package org.java.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.java.dao.DictMapper;
import org.java.entity.Dict;
import org.java.service.DictService;
import org.springframework.stereotype.Service;

@Service
public class DictServiceImpl extends ServiceImpl<DictMapper, Dict> implements DictService {
}
