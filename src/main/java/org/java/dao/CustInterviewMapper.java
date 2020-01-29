package org.java.dao;

import org.java.entity.CustInterview;

public interface CustInterviewMapper {
    int deleteByPrimaryKey(Integer custId);

    int insert(CustInterview record);

    int insertSelective(CustInterview record);

    CustInterview selectByPrimaryKey(Integer custId);

    int updateByPrimaryKeySelective(CustInterview record);

    int updateByPrimaryKey(CustInterview record);
}