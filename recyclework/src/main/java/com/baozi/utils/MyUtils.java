package com.baozi.utils;

import com.google.gson.Gson;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpClientErrorException;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * 工具类 注入容器
 * @author baozi
 * @data   2021/6/14
 */
@Component
public class MyUtils {

    public static final String DONOR = "DONOR";
    public static final String POOR = "POOR";
    public static final String MANAGER = "MANAGER";

    public static final Gson gson = new Gson();

    @Bean(value = "careerMap")
    public Map getCareerMap(){
        HashMap<Integer, String> career = new HashMap<>();
        career.put(1, DONOR);
        career.put(2, MANAGER);
        career.put(3, POOR);
        return career;
    }

    @Bean
    public Gson getGson(){
        return gson;
    }

    private MyUtils(){}

}
