package com.cad.poidocx.entity.city.template1;

import com.deepoove.poi.data.style.Style;
import com.deepoove.poi.data.style.TableStyle;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STJc;

/**
 * Created by LS on 2018/9/11 0011.
 */
public class Template_Style {
    public static final Style textStyle = new Style() {
        {
            setFontFamily("仿宋");
            setFontSize(10);
        }
    };
    public static final Style boldTextStyle = new Style() {
        {
            setFontFamily("仿宋");
            setFontSize(10);
            setBold(Boolean.TRUE);
        }
    };

    public static final TableStyle rowStyle = new TableStyle() {
        {
            setAlign(STJc.CENTER);
        }
    };
}
