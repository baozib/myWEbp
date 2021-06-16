package com.baozi.service;


/**
 *
 * @desc   公用层接口
 * @author baozi
 * @data   2021/6/13
 */
public interface GlobalService<T> {

    /**
     * 注册业务
     * @param t User实体类
     * @return  返回“RepeatUsername”,"RepeatMailbox","success"
     */
    Integer register(T t);

}
