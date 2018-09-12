package com.cad.poidocx.entity.city.template1;

import com.deepoove.poi.data.PictureRenderData;

/**
 * Created by LS on 2018/9/10 0010.
 */
public class Template1_Part1 extends Template1_BaseAlarmInfo {
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

    private PictureRenderData picture1;
    private PictureRenderData picture2;
    private PictureRenderData picture3;

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

    public PictureRenderData getPicture1() {
        return picture1;
    }

    public void setPicture1(PictureRenderData picture1) {
        this.picture1 = picture1;
    }

    public PictureRenderData getPicture2() {
        return picture2;
    }

    public void setPicture2(PictureRenderData picture2) {
        this.picture2 = picture2;
    }

    public PictureRenderData getPicture3() {
        return picture3;
    }

    public void setPicture3(PictureRenderData picture3) {
        this.picture3 = picture3;
    }
}
