package com.muniao.dao;

import com.muniao.entity.RefundRule;
import org.springframework.stereotype.Repository;

/**
 * 史国纲 2018/6/7 14:42
 */
@Repository
public interface RefundRuleMapper {
    RefundRule selectByRuleId(int ruleId);
}
