package org.java.dao;

import org.java.entity.Station;

public interface StationMapper {
    int deleteByPrimaryKey(Integer custNo);

    int insert(Station record);

    int insertSelective(Station record);

    Station selectByPrimaryKey(Integer custNo);

    int updateByPrimaryKeySelective(Station record);

    int updateByPrimaryKey(Station record);
}