package com.baozi.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.InputStream;


/**
 *
 * @desc
 * 通过SqlSessionFactoryBuilder获取SqlSessionFactory
 * 通过SqlSessionFactory获取Sqlsession对象用于操控数据库
 * @author baozi
 * @data   2021/5/20
 */
public class MybatisUtils {

    public static SqlSessionFactory build;   //重用SqlSessionFactory

    static{
        try {
            String resource = "mybatis-config.xml";
            InputStream resourceAsStream = Resources.getResourceAsStream(resource);
            build = new SqlSessionFactoryBuilder().build(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static SqlSession getSqlSession(){
        return build.openSession();
    }

}
