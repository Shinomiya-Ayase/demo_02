package org.java.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.java.dao.ChannelTypeMapper;
import org.java.entity.ChannelType;
import org.java.service.ChannelTypeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@SuppressWarnings("all")
@Transactional
public class ChannelTypeServiceImpl extends ServiceImpl<ChannelTypeMapper, ChannelType>
        implements ChannelTypeService {
}
