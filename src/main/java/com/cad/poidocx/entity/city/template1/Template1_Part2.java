package com.cad.poidocx.entity.city.template1;

import com.deepoove.poi.config.Name;

/**
 * Created by LS on 2018/9/10 0010.
 */
public class Template1_Part2 extends Template1_AreaAlarmInfo {
    /**
     * (报表日期):2010年8月份
     */
    private String summaryReportDate;
    /**
     * (区域名称):襄阳市
     */
    private String areaName;

    /**
     * 车辆报警情况排名表
     */
    private String allVehicleAlarmRankingInfosTitle;

    @Name("part2AllAlarmTableData")
    private Tempate1_SimpleTableData allVehicleAlarmRankingInfosDetailData;
    /**
     * 重点营运车辆报警情况排名表
     */
    private String importantVehicleAlarmRankingInfosTitle;
    private String allVehicleAlarmRankingInfosSumAlarmNumber;
    private String allVehicleAlarmRankingInfosSumAvgAlarmNumber;
    private String allVehicleAlarmRankingInfosSumVehilceNumber;

    public String getAllVehicleAlarmRankingInfosSumAlarmNumber() {
        if (getAllVehicleAlarmRankingInfosSum() != null) {
            return getAllVehicleAlarmRankingInfosSum().getAlarmNumber();
        }
        return "";
    }

    public void setAllVehicleAlarmRankingInfosSumAlarmNumber(String allVehicleAlarmRankingInfosSumAlarmNumber) {
        this.allVehicleAlarmRankingInfosSumAlarmNumber = allVehicleAlarmRankingInfosSumAlarmNumber;
    }

    public String getAllVehicleAlarmRankingInfosSumAvgAlarmNumber() {
        if (getAllVehicleAlarmRankingInfosSum() != null) {
            return getAllVehicleAlarmRankingInfosSum().getAvgAlarmNumber();
        }
        return "";
    }

    public void setAllVehicleAlarmRankingInfosSumAvgAlarmNumber(String allVehicleAlarmRankingInfosSumAvgAlarmNumber) {
        this.allVehicleAlarmRankingInfosSumAvgAlarmNumber = allVehicleAlarmRankingInfosSumAvgAlarmNumber;
    }

    public String getAllVehicleAlarmRankingInfosSumVehilceNumber() {
        if (getAllVehicleAlarmRankingInfosSum() != null) {
            return getAllVehicleAlarmRankingInfosSum().getVehilceNumber();
        }
        return "";
    }

    public void setAllVehicleAlarmRankingInfosSumVehilceNumber(String allVehicleAlarmRankingInfosSumVehilceNumber) {
        this.allVehicleAlarmRankingInfosSumVehilceNumber = allVehicleAlarmRankingInfosSumVehilceNumber;
    }

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

    public String getAllVehicleAlarmRankingInfosTitle() {
        return allVehicleAlarmRankingInfosTitle;
    }

    public void setAllVehicleAlarmRankingInfosTitle(String allVehicleAlarmRankingInfosTitle) {
        this.allVehicleAlarmRankingInfosTitle = allVehicleAlarmRankingInfosTitle;
    }

    public String getImportantVehicleAlarmRankingInfosTitle() {
        return importantVehicleAlarmRankingInfosTitle;
    }

    public void setImportantVehicleAlarmRankingInfosTitle(String importantVehicleAlarmRankingInfosTitle) {
        this.importantVehicleAlarmRankingInfosTitle = importantVehicleAlarmRankingInfosTitle;
    }

    public Tempate1_SimpleTableData getAllVehicleAlarmRankingInfosDetailData() {
        return allVehicleAlarmRankingInfosDetailData;
    }

    public void setAllVehicleAlarmRankingInfosDetailData(Tempate1_SimpleTableData allVehicleAlarmRankingInfosDetailData) {
        this.allVehicleAlarmRankingInfosDetailData = allVehicleAlarmRankingInfosDetailData;
    }
}
