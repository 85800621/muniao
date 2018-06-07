package com.muniao.entity;

/**
 * 退款规则
 */
public class RefundRule {
    /**
     * 规则Id
     */
    private int ruleId;
    /**
     * 规则类型
     */
    private String ruleType;
    /**
     * 规则内容
     */
    private String ruleContent;

    public int getRuleId() {
        return ruleId;
    }

    public void setRuleId(int ruleId) {
        this.ruleId = ruleId;
    }

    public String getRuleType() {
        return ruleType;
    }

    public void setRuleType(String ruleType) {
        this.ruleType = ruleType;
    }

    public String getRuleContent() {
        return ruleContent;
    }

    public void setRuleContent(String ruleContent) {
        this.ruleContent = ruleContent;
    }
}
