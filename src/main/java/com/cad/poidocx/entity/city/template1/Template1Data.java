package com.cad.poidocx.entity.city.template1;

/**
 * Created by LS on 2018/9/7 0007.
 */
public class Template1Data {
    /**
     * (报表日期):2010年8月份
     */
    private String summaryReportDate;
    /**
     * (区域名称):襄阳市
     */
    private String areaName;
    /**
     * (简报生成日期):2018年9月4日
     */
    private String summaryReportGenerateDate;
    /**
     * 第一部分,报警基本信息
     */
    private Template1_BaseAlarmInfo baseAlarmInfo;
    /**
     * 第二部分，区（县）所超速、疲劳驾驶、凌晨2-5时禁行三类报警情况
     */
    private Template1_AreaAlarmInfo areaAlarmInfo;

    public String getSummaryReportDate() {
        return summaryReportDate;
    }

    public void setSummaryReportDate(String summaryReportDate) {
        this.summaryReportDate = summaryReportDate;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getSummaryReportGenerateDate() {
        return summaryReportGenerateDate;
    }

    public void setSummaryReportGenerateDate(String summaryReportGenerateDate) {
        this.summaryReportGenerateDate = summaryReportGenerateDate;
    }

    public Template1_BaseAlarmInfo getBaseAlarmInfo() {
        return baseAlarmInfo;
    }

    public void setBaseAlarmInfo(Template1_BaseAlarmInfo baseAlarmInfo) {
        this.baseAlarmInfo = baseAlarmInfo;
    }

    public Template1_AreaAlarmInfo getAreaAlarmInfo() {
        return areaAlarmInfo;
    }

    public void setAreaAlarmInfo(Template1_AreaAlarmInfo areaAlarmInfo) {
        this.areaAlarmInfo = areaAlarmInfo;
    }
}
