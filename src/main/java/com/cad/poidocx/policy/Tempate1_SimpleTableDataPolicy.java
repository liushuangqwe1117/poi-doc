package com.cad.poidocx.policy;

import com.cad.poidocx.entity.city.template1.Tempate1_SimpleTableData;
import com.deepoove.poi.NiceXWPFDocument;
import com.deepoove.poi.XWPFTemplate;
import com.deepoove.poi.data.RowRenderData;
import com.deepoove.poi.data.TextRenderData;
import com.deepoove.poi.policy.DynamicTableRenderPolicy;
import com.deepoove.poi.policy.MiniTableRenderPolicy;
import com.deepoove.poi.template.ElementTemplate;
import com.deepoove.poi.template.run.RunTemplate;
import org.apache.poi.xwpf.usermodel.*;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;

import java.util.ArrayList;
import java.util.List;

public class Tempate1_SimpleTableDataPolicy extends DynamicTableRenderPolicy {
    /**
     * 填充数据所在行数
     */
    private int startRow;
    /**
     * 表格列数
     */
    private int colNum;
    /**
     * 是否合并
     */
    private boolean merge = false;
    /**
     * 合并开始列
     */
    private int mergeStartColumn;
    /**
     * 合并结束列
     */
    private int mergeEndColumn;
    /**
     * 记录是否为空
     */
    private boolean empty = false;

    public Tempate1_SimpleTableDataPolicy(int startRow, int colNum) {
        this.startRow = startRow;
        this.colNum = colNum;
        this.merge = false;
    }

    public Tempate1_SimpleTableDataPolicy(int startRow, int colNum, int mergeStartColumn, int mergeEndColumn) {
        this.startRow = startRow;
        this.colNum = colNum;
        this.merge = true;
        this.mergeStartColumn = mergeStartColumn;
        this.mergeEndColumn = mergeEndColumn;
    }

    @Override
    public void render(ElementTemplate eleTemplate, Object data,
                       XWPFTemplate template) {
        NiceXWPFDocument doc = template.getXWPFDocument();
        RunTemplate runTemplate = (RunTemplate) eleTemplate;
        XWPFRun run = runTemplate.getRun();
        run.setText("", 0);
        try {
            //w:tbl-w:tr-w:tc-w:p-w:tr
            XmlCursor newCursor = ((XWPFParagraph) run.getParent()).getCTP().newCursor();
            newCursor.toParent();
            //if (newCursor.getObject() instanceof CTTc)
            newCursor.toParent();
            newCursor.toParent();
            XmlObject object = newCursor.getObject();
            XWPFTable table = doc.getTable((CTTbl) object);
            render(table, data);
            //如果数据为空，则删除表格，前提是表格必须先渲染，因为存在模板合并的操作
            if (empty) {
                int pos = doc.getPosOfTable(table);
                doc.removeBodyElement(pos);
            }
        } catch (Exception e) {
            logger.error("dynamic table error:" + e.getMessage(), e);
        }
    }

    @Override
    public void render(XWPFTable table, Object data) {
        if (null == data) {
            return;
        }
        Tempate1_SimpleTableData detailData = (Tempate1_SimpleTableData) data;

        List<RowRenderData> datas = detailData.getDatas();
        if (datas == null || datas.isEmpty()) {
            empty = true;
            //记录为空，则不存在合并操作
            merge = false;
            // 如果记录为空，则会报错，因为存在模板合并的操作，所以初始化一条空记录
            datas = initOneEmptyRecord();
        }

        table.removeRow(startRow);
        // 循环插入行
        for (int i = datas.size() - 1; i >= 0; i--) {
            XWPFTableRow insertNewTableRow = table.insertNewTableRow(startRow);
            for (int j = 0; j < colNum; j++) {
                XWPFTableCell cell = insertNewTableRow.createCell();
                cell.setVerticalAlignment(XWPFTableCell.XWPFVertAlign.CENTER);
            }
            MiniTableRenderPolicy.renderRow(table, startRow, datas.get(i));
            if (merge && (i == datas.size() - 1)) {
                NiceXWPFDocument.mergeCellsHorizonal(table, startRow, mergeStartColumn, mergeEndColumn);
            }
        }
    }

    private List<RowRenderData> initOneEmptyRecord() {
        List<RowRenderData> datas = new ArrayList<>();
        TextRenderData[] columns = new TextRenderData[colNum];
        for (int k = 0; k < colNum; k++) {
            columns[k] = new TextRenderData("");
        }
        RowRenderData rowRenderData = RowRenderData.build(columns);
        datas.add(rowRenderData);
        return datas;
    }
}
