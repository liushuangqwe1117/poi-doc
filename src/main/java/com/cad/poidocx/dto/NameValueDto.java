package com.cad.poidocx.dto;

/**
 * Created by LS on 2018/9/12 0012.
 */
public class NameValueDto {
    private String name;
    private String value;

    public NameValueDto() {
    }

    public NameValueDto(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
