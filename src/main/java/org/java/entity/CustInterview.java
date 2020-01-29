package org.java.entity;

public class CustInterview {
    private Integer custId;

    private Integer interviewId;

    private String interviewResult;

    private String ruzhiinfo;

    private Integer yesorno;

    private String yesornoposition;

    private String positionCondition;

    public CustInterview(Integer custId, Integer interviewId, String interviewResult, String ruzhiinfo, Integer yesorno, String yesornoposition, String positionCondition) {
        this.custId = custId;
        this.interviewId = interviewId;
        this.interviewResult = interviewResult;
        this.ruzhiinfo = ruzhiinfo;
        this.yesorno = yesorno;
        this.yesornoposition = yesornoposition;
        this.positionCondition = positionCondition;
    }

    public CustInterview() {
        super();
    }

    public Integer getCustId() {
        return custId;
    }

    public void setCustId(Integer custId) {
        this.custId = custId;
    }

    public Integer getInterviewId() {
        return interviewId;
    }

    public void setInterviewId(Integer interviewId) {
        this.interviewId = interviewId;
    }

    public String getInterviewResult() {
        return interviewResult;
    }

    public void setInterviewResult(String interviewResult) {
        this.interviewResult = interviewResult == null ? null : interviewResult.trim();
    }

    public String getRuzhiinfo() {
        return ruzhiinfo;
    }

    public void setRuzhiinfo(String ruzhiinfo) {
        this.ruzhiinfo = ruzhiinfo == null ? null : ruzhiinfo.trim();
    }

    public Integer getYesorno() {
        return yesorno;
    }

    public void setYesorno(Integer yesorno) {
        this.yesorno = yesorno;
    }

    public String getYesornoposition() {
        return yesornoposition;
    }

    public void setYesornoposition(String yesornoposition) {
        this.yesornoposition = yesornoposition == null ? null : yesornoposition.trim();
    }

    public String getPositionCondition() {
        return positionCondition;
    }

    public void setPositionCondition(String positionCondition) {
        this.positionCondition = positionCondition == null ? null : positionCondition.trim();
    }
}