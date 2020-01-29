package org.java.dao;

import org.java.entity.Interview;

public interface InterviewMapper {
    int deleteByPrimaryKey(Integer interviewId);

    int insert(Interview record);

    int insertSelective(Interview record);

    Interview selectByPrimaryKey(Integer interviewId);

    int updateByPrimaryKeySelective(Interview record);

    int updateByPrimaryKey(Interview record);
}