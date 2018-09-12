package com.cad.poidocx.controller;

import com.alibaba.fastjson.JSON;
import com.cad.poidocx.dto.NameValueDto;
import com.cad.poidocx.entity.city.template1.Template1Client;
import com.cad.poidocx.entity.city.template1.Template1Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HelloWorldController {
    @Autowired
    Template1Client client;

    @RequestMapping("/helloWorld")
    public String helloWorld(Model model) {
        Template1Data template1Data = client.getTemplate1Data();
        model.addAttribute("data", template1Data);

        List<NameValueDto> chartContainer1Values = new ArrayList<>();
        chartContainer1Values.add(new NameValueDto("班线客运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("旅游客运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("危运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        chartContainer1Values.add(new NameValueDto("普通货运", template1Data.getBaseAlarmInfo().getBusVehicleNumber()));
        model.addAttribute("chartContainer1Values", JSON.toJSON(chartContainer1Values));

        return "helloWorld";
    }
}