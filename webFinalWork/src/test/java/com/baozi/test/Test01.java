package com.baozi.test;


import com.baozi.mapper.ManagerMapper;
import com.baozi.pojo.gereral.User;
import com.baozi.pojo.manager.Manager;
import com.baozi.pojo.manager.ManagerAid;
import com.baozi.service.impl.ManagerServiceImpl;
import com.baozi.utils.MyLogger;
import com.baozi.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class Test01 {
    Logger logger = MyLogger.getLogger(Test01.class);
    @Test
    public void test() throws NoSuchAlgorithmException {
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        String s = "1223";
        byte[] bytes = s.getBytes();
        byte[] digest = md5.digest(bytes);
        StringBuffer sb = new StringBuffer();
        for(int i = 0; i<digest.length; i++){
            int val = ((int)digest[i]) & 0xff;
            if(val < 16){
                sb.append("0");
            }
            sb.append(Integer.toHexString(val));
        }
        System.out.println(sb.toString());
    }


}
