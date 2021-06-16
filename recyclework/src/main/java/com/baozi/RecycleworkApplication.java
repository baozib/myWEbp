package com.baozi;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @desc   主启动类 入口
 * @author baozi
 * @data   2021/6/12
 */
@MapperScan("com.baozi.mapper")
@SpringBootApplication
public class RecycleworkApplication {

    public static void main(String[] args) {
        SpringApplication.run(RecycleworkApplication.class, args);
    }

}
