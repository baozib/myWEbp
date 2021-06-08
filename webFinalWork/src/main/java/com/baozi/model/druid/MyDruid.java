package com.baozi.model.druid;

import com.alibaba.druid.pool.DruidDataSource;
import com.baozi.utils.MybatisUtils;
import org.apache.ibatis.datasource.DataSourceFactory;
import org.junit.jupiter.api.Test;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @desc   使用Druid数据库连接池
 * @author baozi
 * @data   2021/5/28
 */
public class MyDruid implements DataSourceFactory {

    private Properties properties;

    @Override
    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    @Override
    public DataSource getDataSource() {
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setUrl(this.properties.getProperty("url"));
        druidDataSource.setUsername(this.properties.getProperty("username"));
        druidDataSource.setPassword(this.properties.getProperty("password"));
        try {
            druidDataSource.init();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return druidDataSource;
    }
}
