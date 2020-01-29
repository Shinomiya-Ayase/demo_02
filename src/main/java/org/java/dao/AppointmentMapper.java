package org.java.dao;

import org.java.entity.Appointment;

public interface AppointmentMapper {
    int deleteByPrimaryKey(Integer appId);

    int insert(Appointment record);

    int insertSelective(Appointment record);

    Appointment selectByPrimaryKey(Integer appId);

    int updateByPrimaryKeySelective(Appointment record);

    int updateByPrimaryKey(Appointment record);
}