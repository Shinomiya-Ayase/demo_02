package org.java.entity;

public class Station {
    private Integer custNo;

    private String stationName;

    private Integer departId;

    public Station(Integer custNo, String stationName, Integer departId) {
        this.custNo = custNo;
        this.stationName = stationName;
        this.departId = departId;
    }

    public Station() {
        super();
    }

    public Integer getCustNo() {
        return custNo;
    }

    public void setCustNo(Integer custNo) {
        this.custNo = custNo;
    }

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName == null ? null : stationName.trim();
    }

    public Integer getDepartId() {
        return departId;
    }

    public void setDepartId(Integer departId) {
        this.departId = departId;
    }
}