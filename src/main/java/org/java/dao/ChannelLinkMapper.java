package org.java.dao;

import org.java.entity.ChannelLink;

public interface ChannelLinkMapper {
    int insert(ChannelLink record);

    int insertSelective(ChannelLink record);
}