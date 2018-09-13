package com.cad.poidocx.entity.city.template1;

import com.cad.poidocx.policy.Tempate1_SimpleTableDataPolicy;
import com.deepoove.poi.XWPFTemplate;
import com.deepoove.poi.config.Configure;
import com.deepoove.poi.data.*;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.*;

/**
 * Created by LS on 2018/9/9 0009.
 */
@Component
public class Template1Client {
    private byte[] pic1Bytes = null;
    private byte[] pic2Bytes = null;
    private byte[] pic3Bytes = null;
    private OutputStream outputStream;

    public void setPic1Bytes(byte[] pic1Bytes) {
        this.pic1Bytes = pic1Bytes;
    }

    public void setPic2Bytes(byte[] pic2Bytes) {
        this.pic2Bytes = pic2Bytes;
    }

    public void setPic3Bytes(byte[] pic3Bytes) {
        this.pic3Bytes = pic3Bytes;
    }

    public void setOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
    }

    public static void main(String[] args) {
        Template1Client client = new Template1Client();
        client.makeDocx();
    }

    public void makeDocx() {
        try {
            Template1Data datas = getTemplate1Data();
            /**
             * 生成第一部分数据
             */
            List<Template1_Part1> part1List = new ArrayList<>();
            Template1_Part1 part1 = new Template1_Part1();
            Template1_BaseAlarmInfo baseAlarmInfo = datas.getBaseAlarmInfo();
            BeanUtils.copyProperties(baseAlarmInfo, part1);

            part1.setSummaryReportDate(datas.getSummaryReportDate());
            part1.setAreaName(datas.getAreaName());
            part1.setSummaryReportGenerateDate(datas.getSummaryReportGenerateDate());
            if (pic1Bytes != null) {
                part1.setPicture1(new PictureRenderData(500, 300, ".jpeg", pic1Bytes));
            } else {
                part1.setPicture1(new PictureRenderData(500, 300, "D:\\project\\poi-doc\\src\\test\\resources\\pic1.png"));
            }

            if (pic2Bytes != null) {
                part1.setPicture2(new PictureRenderData(500, 300, ".jpeg", pic2Bytes));
            } else {
                part1.setPicture2(new PictureRenderData(500, 300, "D:\\project\\poi-doc\\src\\test\\resources\\pic2.png"));
            }

            if (pic3Bytes != null) {
                part1.setPicture3(new PictureRenderData(500, 300, ".jpeg", pic3Bytes));
            } else {
                part1.setPicture3(new PictureRenderData(500, 300, "D:\\project\\poi-doc\\src\\test\\resources\\pic3.png"));
            }
            part1List.add(part1);

            // 生成自定义表格
            RowRenderData row1 = RowRenderData.build(
                    new TextRenderData("", Template_Style.songTextStyle),
                    new TextRenderData("班线客运", Template_Style.songTextStyle),
                    new TextRenderData("旅游客运", Template_Style.songTextStyle),
                    new TextRenderData("危运", Template_Style.songTextStyle),
                    new TextRenderData("普通货运", Template_Style.songTextStyle));
            RowRenderData row2 = RowRenderData.build(
                    new TextRenderData("超速", Template_Style.songTextStyle),
                    new TextRenderData("6983", Template_Style.songTextStyle),
                    new TextRenderData("691", Template_Style.songTextStyle),
                    new TextRenderData("1914", Template_Style.songTextStyle),
                    new TextRenderData("4318", Template_Style.songTextStyle));
            RowRenderData row3 = RowRenderData.build(
                    new TextRenderData("疲劳驾驶", Template_Style.songTextStyle),
                    new TextRenderData("1328", Template_Style.songTextStyle),
                    new TextRenderData("134", Template_Style.songTextStyle),
                    new TextRenderData("428", Template_Style.songTextStyle),
                    new TextRenderData("5534", Template_Style.songTextStyle));
            RowRenderData row4 = RowRenderData.build(
                    new TextRenderData("2-5时禁驾", Template_Style.songTextStyle),
                    new TextRenderData("18", Template_Style.songTextStyle),
                    new TextRenderData("9", Template_Style.songTextStyle),
                    new TextRenderData("0", Template_Style.songTextStyle),
                    new TextRenderData("0", Template_Style.songTextStyle));
            row1.setStyle(Template_Style.rowStyle);
            row2.setStyle(Template_Style.rowStyle);
            row3.setStyle(Template_Style.rowStyle);
            row4.setStyle(Template_Style.rowStyle);

            Tempate1_SimpleTableData chartTable = new Tempate1_SimpleTableData();
            chartTable.setDatas(Arrays.asList(row1, row2, row3, row4));
            part1.setChartTable(chartTable);

            DocxRenderData segment = new DocxRenderData(new File("D:\\project\\poi-doc\\src\\main\\resources\\template\\city\\city_template1_part1.docx"), part1List);
            /**
             * 生成第二部分数据
             */
            List<Template1_Part2> part2List = new ArrayList<>();
            Template1_Part2 part2 = new Template1_Part2();
            BeanUtils.copyProperties(datas.getAreaAlarmInfo(), part2);
            part2.setSummaryReportDate(datas.getSummaryReportDate());
            part2.setAreaName(datas.getAreaName());
            part2.setAllVehicleAlarmRankingInfosTitle(part2.getSummaryReportDate() + "车辆报警情况排名表");
            part2.setImportantVehicleAlarmRankingInfosTitle(part2.getSummaryReportDate() + "重点营运车辆报警情况排名表");

            Tempate1_SimpleTableData part2AllAlarmTableData = new Tempate1_SimpleTableData();
            List<RowRenderData> part2AllAlarmTableDatas = new ArrayList<>();
            List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> allVehicleAlarmRankingInfos = part2.getAllVehicleAlarmRankingInfosList();
            if (allVehicleAlarmRankingInfos != null && !allVehicleAlarmRankingInfos.isEmpty()) {
                allVehicleAlarmRankingInfos.stream().forEach(row -> {
                    RowRenderData rowRenderData = RowRenderData.build(
                            new TextRenderData(row.getSerialNo(), Template_Style.textStyle),
                            new TextRenderData(row.getAreaName(), Template_Style.textStyle),
                            new TextRenderData(row.getVehilceNumber(), Template_Style.textStyle),
                            new TextRenderData(row.getAlarmNumber(), Template_Style.textStyle),
                            new TextRenderData(row.getAvgAlarmNumber(), Template_Style.textStyle));
                    rowRenderData.setStyle(Template_Style.rowStyle);
                    part2AllAlarmTableDatas.add(rowRenderData);
                });
                //添加小计
                Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum sum = part2.getAllVehicleAlarmRankingInfosSum();
                RowRenderData rowRenderData = RowRenderData.build(
                        new TextRenderData("小计", Template_Style.boldTextStyle),
                        new TextRenderData("", Template_Style.boldTextStyle),
                        new TextRenderData(sum.getVehilceNumber(), Template_Style.boldTextStyle),
                        new TextRenderData(sum.getAlarmNumber(), Template_Style.boldTextStyle),
                        new TextRenderData(sum.getAvgAlarmNumber(), Template_Style.boldTextStyle));
                rowRenderData.setStyle(Template_Style.rowStyle);
                part2AllAlarmTableDatas.add(rowRenderData);
            }
            part2AllAlarmTableData.setDatas(part2AllAlarmTableDatas);
            part2.setAllVehicleAlarmRankingInfosDetailData(part2AllAlarmTableData);

            part2List.add(part2);
            DocxRenderData segment2 = new DocxRenderData(new File("D:\\project\\poi-doc\\src\\main\\resources\\template\\city\\city_template1_part2.docx"), part2List);

            /**
             * 集合处理
             */
            Map<String, Object> dataMap = getBaseDataMap(datas);
            dataMap.put("segment", segment);
            dataMap.put("segment2", segment2);

            Configure config = Configure.newBuilder()
                    .customPolicy("part2AllAlarmTableData", new Tempate1_SimpleTableDataPolicy(1, 5, 0, 1))
                    .customPolicy("chartTable", new Tempate1_SimpleTableDataPolicy(0, 5))
                    .build();
            XWPFTemplate template = XWPFTemplate.compile("D:\\project\\poi-doc\\src\\main\\resources\\template\\city\\city_template1.docx", config).render(dataMap);
            if (outputStream == null) {
                outputStream = new FileOutputStream("D:\\project\\poi-doc\\out_city_template1.docx");
            }
            template.write(outputStream);
            outputStream.flush();
            outputStream.close();
            template.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Map<String, Object> getBaseDataMap(Template1Data data) {
        Map<String, Object> dataMap = new HashMap<>();
        dataMap.put("summaryReportDate", data.getSummaryReportDate());
        dataMap.put("areaName", data.getAreaName());
        dataMap.put("summaryReportGenerateDate", data.getSummaryReportGenerateDate());
        return dataMap;
    }

    public Template1Data getTemplate1Data() {
        Template1Data datas = new Template1Data();
        datas.setSummaryReportDate("2018年8月份");
        datas.setAreaName("襄阳市");
        datas.setSummaryReportGenerateDate("2018年9月4日");
        /**
         * 第一部分,车辆基本信息
         */
        createPart1Data(datas);
        /**
         * 第二部分数据
         */
        createPart2Data(datas);
        return datas;
    }

    private void createPart1Data(Template1Data datas) {
        Template1_BaseAlarmInfo baseAlarmInfo = new Template1_BaseAlarmInfo();
        baseAlarmInfo.setVehicleTotalNumber("41287");
        baseAlarmInfo.setBusVehicleNumber("1049");
        baseAlarmInfo.setCarDangerVehicleNumber("3158");
        baseAlarmInfo.setDangerVehicleNumber("1894");
        baseAlarmInfo.setTourVehicleNumber("215");
        baseAlarmInfo.setGoodsVehicleNumber("38129");

        baseAlarmInfo.setAlarmTotalNumber("21357");
        baseAlarmInfo.setBusAlarmNumber("8329");
        baseAlarmInfo.setBusAvgAlarmNumber("7.94");
        baseAlarmInfo.setTourAlarmNumber("8329");
        baseAlarmInfo.setTourAvgAlarmNumber("7.94");
        baseAlarmInfo.setDangerAlarmNumber("8329");
        baseAlarmInfo.setDangerAvgAlarmNumber("7.94");
        baseAlarmInfo.setGoodsAlarmNumber("8329");
        baseAlarmInfo.setGoodsAvgAlarmNumber("7.94");
        baseAlarmInfo.setBusSpeedingAlarmNumber("6983");
        baseAlarmInfo.setBusFatigueAlarmNumber("1328");
        baseAlarmInfo.setBus25AlarmNumber("1328");
        baseAlarmInfo.setTourSpeedingAlarmNumber("6983");
        baseAlarmInfo.setTourFatigueAlarmNumber("1328");
        baseAlarmInfo.setTour25AlarmNumber("1328");
        baseAlarmInfo.setDangerSpeedingAlarmNumber("6983");
        baseAlarmInfo.setDangerFatigueAlarmNumber("1328");
        baseAlarmInfo.setDanger25AlarmNumber("1328");
        baseAlarmInfo.setGoodsSpeedingAlarmNumber("6983");
        baseAlarmInfo.setGoodsFatigueAlarmNumber("1328");
        baseAlarmInfo.setGoods25AlarmNumber("1328");
        baseAlarmInfo.setSpeedingAlarmTotalNumber("6983");
        baseAlarmInfo.setFatigueAlarmTotalNumber("1328");
        baseAlarmInfo.setT25AlarmTotalNumber("1328");
        datas.setBaseAlarmInfo(baseAlarmInfo);
    }

    private void createPart2Data(Template1Data datas) {
        Template1_AreaAlarmInfo areaAlarmInfo = new Template1_AreaAlarmInfo();
        areaAlarmInfo.setAvgAlarmTotalNumber("0.52");
        areaAlarmInfo.setAlarmNumberTop3District("谷城县、宜城市、枣阳市");
        areaAlarmInfo.setAlarmNumberTop3Value("3.37、0.57、0.55");
        areaAlarmInfo.setCarDangerAlarmNumberTop3District("谷城县、枣阳市、宜城市");
        areaAlarmInfo.setCarDangerAlarmNumberTop3Value("3.37、0.57、0.55");
        areaAlarmInfo.setAlarmNumberTop3Prefix("前三的");

        List<String> areaNames = Arrays.asList("谷城县", "宜城市", "枣阳市", "襄州区", "樊城区", "高新区", "襄城区", "老河口市", "南漳县", "保康县");
        List<Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos> allVehicleAlarmRankingInfosList = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos allVehicleAlarmRankingInfos = new Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfos();
            allVehicleAlarmRankingInfos.setSerialNo(i + "");
            allVehicleAlarmRankingInfos.setAreaName(areaNames.get(i - 1));
            allVehicleAlarmRankingInfos.setVehilceNumber("661");
            allVehicleAlarmRankingInfos.setAlarmNumber("2226");
            allVehicleAlarmRankingInfos.setAvgAlarmNumber("3.37");
            allVehicleAlarmRankingInfosList.add(allVehicleAlarmRankingInfos);
        }
        areaAlarmInfo.setAllVehicleAlarmRankingInfosList(allVehicleAlarmRankingInfosList);
        Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum allVehicleAlarmRankingInfosSum = new Template1_AreaAlarmInfo_AllVehicleAlarmRankingInfosSum();
        allVehicleAlarmRankingInfosSum.setAlarmNumber("21357");
        allVehicleAlarmRankingInfosSum.setAvgAlarmNumber("0.52");
        allVehicleAlarmRankingInfosSum.setVehilceNumber("41287");
        areaAlarmInfo.setAllVehicleAlarmRankingInfosSum(allVehicleAlarmRankingInfosSum);

        areaAlarmInfo.setBusAlarmNumberTop3District("谷城县、枣阳市、襄州区");
        areaAlarmInfo.setBusAlarmNumberTop3Value("19.29、10.44、9.84");
        areaAlarmInfo.setTourAlarmNumberTop3District("谷城县、枣阳市、襄州区");
        areaAlarmInfo.setTourAlarmNumberTop3Value("19.29、10.44、9.84");
        areaAlarmInfo.setDangerAlarmNumberTop3District("谷城县、枣阳市、襄州区");
        areaAlarmInfo.setDangerAlarmNumberTop3Value("19.29、10.44、9.84");
        areaAlarmInfo.setGoodsAlarmNumberTop3District("谷城县、枣阳市、襄州区");
        areaAlarmInfo.setGoodsAlarmNumberTop3Value("19.29、10.44、9.84");


        datas.setAreaAlarmInfo(areaAlarmInfo);
    }
}
