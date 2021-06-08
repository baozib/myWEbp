package com.baozi.mapper;

import java.util.List;

/**
 *
 * @desc   用户和管理员的基类，内部有共有方法
 * @author baozi
 * @data   2021/5/20
 */
public interface BaseMapper<T> {
    /**
     * 增加用户
     * @param t 为User对象实例
     * @return  成功为1 反之0
     */
    int insertUser(T t);

    /**
     * 修改用户
     * @param t 为User对象实例
     * @return  成功为1 反之0
     */
    int updateUser(T t);

    /**
     * 查询某个用户
     * @param t 为User对象实例
     * @return  失败为null
     */
    T selectUser(T t);

    /**
     * 查询用户的账户 用于检测注册账号
     * @param t 为User对象实例
     * @return  成功为null
     */
    T selectUsername(T t);

    /**
     * 查询用户的邮箱 用于检测注册账号
     * @param t 为User对象实例
     * @return  成功为null
     */
    T selectMailbox(T t);

    /**
     * 修改用户个人信息
     * @param t User或者Donor和Poor
     */
    void updateMessage(T t);
}
