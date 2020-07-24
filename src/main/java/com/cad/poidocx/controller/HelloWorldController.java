package com.cad.poidocx.controller;

import com.alibaba.fastjson.JSON;
import com.cad.poidocx.dto.NameValueDto;
import com.cad.poidocx.entity.city.template1.Template1Client;
import com.cad.poidocx.entity.city.template1.Template1Data;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HelloWorldController {
    @Autowired
    Template1Client client;

    @RequestMapping("/helloWorld")
    public String helloWorld(Model model,HttpServletRequest request) {
        Template1Data template1Data = client.getTemplate1Data();
        model.addAttribute("data", template1Data);

        List<NameValueDto> chartContainer1Values = new ArrayList<>();
        chartContainer1Values.add(new NameValueDto("班线客运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("旅游客运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("危运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("普通货运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        model.addAttribute("chartContainer1Values", JSON.toJSON(chartContainer1Values));

        model.addAttribute("contextPath",request.getContextPath());
        System.out.println("contextPath：" + request.getContextPath());
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for(Cookie ck : cookies){
                System.out.println(ToStringBuilder.reflectionToString(ck));
            }
        }

        return "helloWorld";
    }

    /**
     * 下载word文档
     */
    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response) {
        StringBuilder char1Data = getPic(request, "char1Data");
        byte[] pic1Bytes = Base64.decodeBase64(char1Data.toString().replaceAll("data:image/jpeg;base64,", ""));
        System.out.println(char1Data);
        StringBuilder char2Data = getPic(request, "char2Data");
        byte[] pic2Bytes = Base64.decodeBase64(char2Data.toString().replaceAll("data:image/jpeg;base64,", ""));
        StringBuilder char3Data = getPic(request, "char3Data");
        byte[] pic3Bytes = Base64.decodeBase64(char3Data.toString().replaceAll("data:image/jpeg;base64,", ""));
        //genPic(pic1Bytes,"pic1.jpeg");
        //genPic(pic2Bytes,"pic2.jpeg");
        //genPic(pic3Bytes,"pic3.jpeg");
        client.setPic1Bytes(pic1Bytes);
        client.setPic2Bytes(pic2Bytes);
        client.setPic3Bytes(pic3Bytes);
        //client.makeDocx();

        try {
            OutputStream outputStream =  response.getOutputStream();
            response.setContentType("application/x-msdownload");
            response.setHeader("Content-Disposition", "attachment; filename=" + new String("车安达2018年8月份数据分析报告-襄阳市".getBytes("utf-8"),"iso8859-1") + ".docx");
            client.setOutputStream(outputStream);
            client.makeDocx();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void genPic(byte[] picData, String picName) {
        try {
            File file = new File("d:\\" + picName);
            FileOutputStream outputStream = new FileOutputStream(file);
            outputStream.write(picData);
            outputStream.flush();
            outputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private StringBuilder getPic(HttpServletRequest request, String paramName) {
        StringBuilder picBuilder = new StringBuilder();
        for (int i = 0; i < 20; i++) {
            String value = request.getParameter(paramName + i);
            if (StringUtils.isBlank(value)) {
                //说明没有图片数据了
                break;
            }
            picBuilder.append(value);
        }
        return picBuilder;
    }
}