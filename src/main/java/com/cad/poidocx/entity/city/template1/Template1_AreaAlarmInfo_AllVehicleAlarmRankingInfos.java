package com.cad.poidocx.entity.city.template1;

/**
 * Created by LS on 2018/9/7 0007.
 */
public class Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos {
    /**
     * 1 (排名)
     */
    private String serialNo;
    /**
     * 谷城县(区名称)
     */
    private String areaName;
    /**
     * 661 (报警车辆数)
     */
    private String vehilceNumber;
    /**
     * 2226 (报警次数)
     */
    private String alarmNumber;
    /**
     * 3.37 (报警均值 = 报警次数 / 报警车辆数)
     */
    private String avgAlarmNumber;

    public String getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(String serialNo) {
        this.serialNo = serialNo;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getVehilceNumber() {
        return vehilceNumber;
    }

    public void setVehilceNumber(String vehilceNumber) {
        this.vehilceNumber = vehilceNumber;
    }

    public String getAlarmNumber() {
        return alarmNumber;
    }

    public void setAlarmNumber(String alarmNumber) {
        this.alarmNumber = alarmNumber;
    }

    public String getAvgAlarmNumber() {
        return avgAlarmNumber;
    }

    public void setAvgAlarmNumber(String avgAlarmNumber) {
        this.avgAlarmNumber = avgAlarmNumber;
    }
}
