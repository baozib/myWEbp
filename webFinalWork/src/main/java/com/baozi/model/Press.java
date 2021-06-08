package com.baozi.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
/**
 *
 * @desc   通过枚举类型的整形常量，增加程序的可读性
 * @author baozi
 * @data   2021/5/20
 */
public enum Press {

    LOGIN_FAIL(-1),
    ERROR_USERNAME(-1),
    ERROR_MAILBOX(0),
    USER_LOGIN(0),
    SUCCESS(1);

    private int num;

    public int getValue(){
        return this.num;
    }

}
