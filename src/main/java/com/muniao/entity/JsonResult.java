package com.muniao.entity;

/**
 * 返回给页面的对象
 * 林浩20180606
 */
public class JsonResult {

    private Integer code;

    private String result;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
