package com.muniao.entity;

/**
 * 返回给页面的对象
 * 林浩20180606
 */
public class JsonResult {

    private Integer code;

    private String username;

    private String  usertype;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public JsonResult(Integer code, String username, String usertype) {
        this.code = code;
        this.username = username;
        this.usertype = usertype;
    }

    public JsonResult() {
    }


}

