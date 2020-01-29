package org.java.dao;

import org.java.entity.Requirement;

public interface RequirementMapper {
    int deleteByPrimaryKey(Integer requirementId);

    int insert(Requirement record);

    int insertSelective(Requirement record);

    Requirement selectByPrimaryKey(Integer requirementId);

    int updateByPrimaryKeySelective(Requirement record);

    int updateByPrimaryKey(Requirement record);
}