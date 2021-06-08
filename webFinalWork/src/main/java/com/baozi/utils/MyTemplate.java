package com.baozi.utils;

import org.apache.ibatis.session.SqlSession;

import java.util.function.Consumer;


/**
 *
 * @desc   模板方法设计模式 统一管理所有数据库关闭和事务提交操作
 * @author baozi
 * @data   2021/5/20
 */
public abstract class MyTemplate {

    /**
     * @param consumer   函数式接口 用于具体业务实现
     */
    protected static  void process(Consumer<SqlSession> consumer){
        SqlSession session = MybatisUtils.getSqlSession();
        consumer.accept(session);
        session.commit();
        session.close();
    }

}


