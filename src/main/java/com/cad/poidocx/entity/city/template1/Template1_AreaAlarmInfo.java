package com.cad.poidocx.entity.city.template1;

import java.util.List;

/**
 * Created by LS on 2018/9/7 0007.
 */
public class Template1_AreaAlarmInfo {
    /**
     * (全市平均报警次数):0.52
     */
    private String avgAlarmTotalNumber;
    /**
     * 谷城县、宜城市、枣阳市(平均报警次数排名前三的区)
     */
    private String alarmNumberTop3District;
    /**
     * 3.37、0.57、0.55（平均报警次数）
     */
    private String alarmNumberTop3Value;
    /**
     * 谷城县、枣阳市、宜城市(两客一危车辆车均报警次数排名)
     */
    private String carDangerAlarmNumberTop3District;

    /**
     * 3.37、0.57、0.55（两客一危车辆车均报警次数）
     */
    private String carDangerAlarmNumberTop3Value;
    /**
     * "前三的" (如果该市区数量小于三个，则为空)
     */
    private String alarmNumberTop3Prefix;
    /**
     * 车辆报警情况排名表
     */
    private List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> allVehicleAlarmRankingInfosList;
    /**
     * 车辆报警情况排名表小计
     */
    private Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum allVehicleAlarmRankingInfosSum;
    /**
     * 重点营运车辆报警情况排名表
     */
    private List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> importantVehicleAlarmRankingInfosList;
    /**
     * 重点营运车辆报警情况排名表小计
     */
    private Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum importantVehicleAlarmRankingInfosSum;
    /**
     * 谷城县、枣阳市、襄州区(班线客运车均报警辖区排名前三的区),
     */
    private String busAlarmNumberTop3District;
    /**
     * 19.29、10.44、9.84（班线客运车均报警次数）
     */
    private String busAlarmNumberTop3Value;
    /**
     * 谷城县、枣阳市、襄州区(旅游客运车均报警辖区排名前三的区),
     */
    private String tourAlarmNumberTop3District;
    /**
     * 19.29、10.44、9.84（旅游客运车均报警次数）,
     */
    private String tourAlarmNumberTop3Value;
    /**
     * 谷城县、枣阳市、襄州区(危险品运输车均报警辖区排名前三的区),
     */
    private String dangerAlarmNumberTop3District;
    /**
     * 19.29、10.44、9.84（危险品运输车均报警次数）,
     */
    private String dangerAlarmNumberTop3Value;
    /**
     * 谷城县、枣阳市、襄州区(普货运输车均报警辖区排名前三的区),
     */
    private String goodsAlarmNumberTop3District;
    /**
     * 19.29、10.44、9.84（普货运输车均报警次数）,
     */
    private String goodsAlarmNumberTop3Value;


    public String getAvgAlarmTotalNumber() {
        return avgAlarmTotalNumber;
    }

    public void setAvgAlarmTotalNumber(String avgAlarmTotalNumber) {
        this.avgAlarmTotalNumber = avgAlarmTotalNumber;
    }

    public String getAlarmNumberTop3District() {
        return alarmNumberTop3District;
    }

    public void setAlarmNumberTop3District(String alarmNumberTop3District) {
        this.alarmNumberTop3District = alarmNumberTop3District;
    }

    public String getAlarmNumberTop3Value() {
        return alarmNumberTop3Value;
    }

    public void setAlarmNumberTop3Value(String alarmNumberTop3Value) {
        this.alarmNumberTop3Value = alarmNumberTop3Value;
    }

    public String getCarDangerAlarmNumberTop3District() {
        return carDangerAlarmNumberTop3District;
    }

    public void setCarDangerAlarmNumberTop3District(String carDangerAlarmNumberTop3District) {
        this.carDangerAlarmNumberTop3District = carDangerAlarmNumberTop3District;
    }

    public String getCarDangerAlarmNumberTop3Value() {
        return carDangerAlarmNumberTop3Value;
    }

    public void setCarDangerAlarmNumberTop3Value(String carDangerAlarmNumberTop3Value) {
        this.carDangerAlarmNumberTop3Value = carDangerAlarmNumberTop3Value;
    }

    public String getAlarmNumberTop3Prefix() {
        return alarmNumberTop3Prefix;
    }

    public void setAlarmNumberTop3Prefix(String alarmNumberTop3Prefix) {
        this.alarmNumberTop3Prefix = alarmNumberTop3Prefix;
    }

    public List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> getAllVehicleAlarmRankingInfosList() {
        return allVehicleAlarmRankingInfosList;
    }

    public void setAllVehicleAlarmRankingInfosList(List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> allVehicleAlarmRankingInfosList) {
        this.allVehicleAlarmRankingInfosList = allVehicleAlarmRankingInfosList;
    }

    public List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> getImportantVehicleAlarmRankingInfosList() {
        return importantVehicleAlarmRankingInfosList;
    }

    public void setImportantVehicleAlarmRankingInfosList(List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> importantVehicleAlarmRankingInfosList) {
        this.importantVehicleAlarmRankingInfosList = importantVehicleAlarmRankingInfosList;
    }

    public Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum getAllVehicleAlarmRankingInfosSum() {
        return allVehicleAlarmRankingInfosSum;
    }

    public void setAllVehicleAlarmRankingInfosSum(Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum allVehicleAlarmRankingInfosSum) {
        this.allVehicleAlarmRankingInfosSum = allVehicleAlarmRankingInfosSum;
    }

    public Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum getImportantVehicleAlarmRankingInfosSum() {
        return importantVehicleAlarmRankingInfosSum;
    }

    public void setImportantVehicleAlarmRankingInfosSum(Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum importantVehicleAlarmRankingInfosSum) {
        this.importantVehicleAlarmRankingInfosSum = importantVehicleAlarmRankingInfosSum;
    }

    public String getBusAlarmNumberTop3District() {
        return busAlarmNumberTop3District;
    }

    public void setBusAlarmNumberTop3District(String busAlarmNumberTop3District) {
        this.busAlarmNumberTop3District = busAlarmNumberTop3District;
    }

    public String getBusAlarmNumberTop3Value() {
        return busAlarmNumberTop3Value;
    }

    public void setBusAlarmNumberTop3Value(String busAlarmNumberTop3Value) {
        this.busAlarmNumberTop3Value = busAlarmNumberTop3Value;
    }

    public String getTourAlarmNumberTop3District() {
        return tourAlarmNumberTop3District;
    }

    public void setTourAlarmNumberTop3District(String tourAlarmNumberTop3District) {
        this.tourAlarmNumberTop3District = tourAlarmNumberTop3District;
    }

    public String getTourAlarmNumberTop3Value() {
        return tourAlarmNumberTop3Value;
    }

    public void setTourAlarmNumberTop3Value(String tourAlarmNumberTop3Value) {
        this.tourAlarmNumberTop3Value = tourAlarmNumberTop3Value;
    }

    public String getDangerAlarmNumberTop3District() {
        return dangerAlarmNumberTop3District;
    }

    public void setDangerAlarmNumberTop3District(String dangerAlarmNumberTop3District) {
        this.dangerAlarmNumberTop3District = dangerAlarmNumberTop3District;
    }

    public String getDangerAlarmNumberTop3Value() {
        return dangerAlarmNumberTop3Value;
    }

    public void setDangerAlarmNumberTop3Value(String dangerAlarmNumberTop3Value) {
        this.dangerAlarmNumberTop3Value = dangerAlarmNumberTop3Value;
    }

    public String getGoodsAlarmNumberTop3District() {
        return goodsAlarmNumberTop3District;
    }

    public void setGoodsAlarmNumberTop3District(String goodsAlarmNumberTop3District) {
        this.goodsAlarmNumberTop3District = goodsAlarmNumberTop3District;
    }

    public String getGoodsAlarmNumberTop3Value() {
        return goodsAlarmNumberTop3Value;
    }

    public void setGoodsAlarmNumberTop3Value(String goodsAlarmNumberTop3Value) {
        this.goodsAlarmNumberTop3Value = goodsAlarmNumberTop3Value;
    }
}
