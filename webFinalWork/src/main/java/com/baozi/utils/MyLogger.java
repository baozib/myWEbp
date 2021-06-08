package com.baozi.utils;

import org.apache.log4j.Logger;

/**
 *
 * @desc   单例设计模式 获取日志
 * @author baozi
 * @data   2021/5/20
 */
public class MyLogger {

    public static volatile Logger logger;

    public static Logger getLogger(Class cls) {
        if (logger == null) {
            synchronized (MyLogger.class) {
                if (logger == null) {
                    logger = Logger.getLogger(cls);
                }
            }
        }
        return logger;
    }

}
