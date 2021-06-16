package com.baozi.handle;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Date;

/**
 *
 * 插入值时候的填充策略
 * @author baozi
 * @data   2021/6/12
 */
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    /**
     * 增加时启用
     * @param metaObject
     */
    @Override
    public void insertFill(MetaObject metaObject) {
        //当前日期
        LocalDate now = LocalDate.now();
        //String fieldName, Object fieldVal, MetaObject metaObject (字段名，数据，metaObject)
        setFieldValByName("createTime", now, metaObject);
        setFieldValByName("updateTime", now, metaObject);
    }

    /**
     * 修改时启用
     * @param metaObject
     */
    @Override
    public void updateFill(MetaObject metaObject) {
        setFieldValByName("updateTime", LocalDate.now(),metaObject);
    }
}
