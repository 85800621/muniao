package com.muniao.entity;

/**
 * 史国纲 2018/6/7
 * 出租方式类
 */
public class RentalMethod {
    /**
     * 出租方式id、
     */
    private int methodId;
    /**
     * 出租方式
     */
    private String method;

    public int getMethodId() {
        return methodId;
    }

    public void setMethodId(int methodId) {
        this.methodId = methodId;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
