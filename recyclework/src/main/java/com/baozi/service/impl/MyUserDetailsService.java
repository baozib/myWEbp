package com.baozi.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.domain.User;
import com.baozi.mapper.GloBalMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 *
 * 自定义登录逻辑
 * @author baozi
 * @data   2021/6/13
 */
@Service
public class MyUserDetailsService implements UserDetailsService {

    public static final String ERROR = "账户或密码不正确";

    /**
     * [gm]注入GloBalMapper实例
     */
    @Autowired
    private GloBalMapper gm;

    /**
     * [careerMap]注入Utils下的职位名单
     */
    @Resource(name = "careerMap")
    private Map<Integer, String> careerMap;

    /**
     * 自定义登录逻辑，判断账户密码是否正确
     * @param username 用户名
     * @return 返回UserDetails的子类User
     * @throws UsernameNotFoundException 账户找不到异常
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //对username字段进行检查
        User user = gm.selectOne(new QueryWrapper<User>().eq("username", username));

        //不存在此用户 抛出用户找不到异常
        if(user == null){
            throw new UsernameNotFoundException(ERROR);
        }

        //创建UserDetails接口 传入user里面的账户密码和身份 对字符串身份进行Authority类型转换
        UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                            user.getUsername(),
                            user.getPassword(),
                            AuthorityUtils.createAuthorityList(careerMap.get(user.getCareer().intValue())));

        return userDetails;
    }


}
