package org.java.dao;

import org.java.entity.Bargain;

public interface BargainMapper {
    int deleteByPrimaryKey(Integer bargainNo);

    int insert(Bargain record);

    int insertSelective(Bargain record);

    Bargain selectByPrimaryKey(Integer bargainNo);

    int updateByPrimaryKeySelective(Bargain record);

    int updateByPrimaryKey(Bargain record);
}