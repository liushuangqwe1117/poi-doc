package com.cad.poidocx.entity.city.template1;

import com.deepoove.poi.data.RowRenderData;

import java.util.List;

/**
 * Created by LS on 2018/9/11 0011.
 */
public class Tempate1_SimpleTableData {
    /**
     * 该数据为空就会渲染异常，所以datas不能为空，如果数据为空，则插入一行空白字符
     */
    private List<RowRenderData> datas;

    public List<RowRenderData> getDatas() {
        return datas;
    }

    public void setDatas(List<RowRenderData> datas) {
        this.datas = datas;
    }
}
