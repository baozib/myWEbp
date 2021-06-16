package com.baozi;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.domain.Type;
import com.baozi.domain.User;
import com.baozi.domain.manager.Manager;
import com.baozi.domain.manager.ManagerAid;
import com.baozi.domain.manager.ManagerCareer;
import com.baozi.mapper.DonorMapper;
import com.baozi.mapper.GloBalMapper;
import com.baozi.mapper.ManagerMapper;
import com.baozi.service.ManagerService;
import com.baozi.service.impl.ManagerServiceimpl;
import com.google.gson.Gson;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 *
 * @desc   测试类
 * @author baozi
 * @data   2021/6/14
 */
@SpringBootTest
class RecycleworkApplicationTests {

    @Autowired
    private GloBalMapper gloBalMapper;

    @Autowired
    private PasswordEncoder pw;

    @Autowired
    private ManagerMapper managerMapper;

    @Resource(name = "careerMap")
    private Map map;

    @Value("${spring.profiles.active}")
    private String s;

    @Autowired
    private Gson gson;

    @Autowired
    private ManagerService ms;

    @Autowired
    private DonorMapper dm;

    @Test
    void contextLoads() {
        List<Type> types = dm.selectType();
        System.out.println(types);
    }


}
