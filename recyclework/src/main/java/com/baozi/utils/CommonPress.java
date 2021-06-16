package com.baozi.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

/**
 * 表达结果集[用户登入，用户注册]
 *
 * @author baozi
 * @data   2021/6/13
 */
@NoArgsConstructor
@AllArgsConstructor
public enum CommonPress {
    /**
     * 登入错误/删除失败
     */
    FAIL(1),
    /**
     * 账户重复
     */
    REPEAT_USERNAME(1),
    /**
     * 邮箱重复
     */
    REPEAT_MAILBOX(2),
    /**
     * 登入成功/删除成功
     */
    SUCCESS(3),

    /**
     * 管理员登入
     */
    MANAGER_LOGIN(2),

    /**
     * 普通用户登入
     */
    USER_LOGIN(3);


    //参数值
    private Integer value;

    /**
     * 返回枚举变量的Integer值
     * @return
     */
    public Integer getValue(){
        return this.value;
    }

}
