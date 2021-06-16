package com.baozi.handle;

import com.baozi.utils.CommonPress;
import com.fasterxml.jackson.databind.util.BeanUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 *
 * 用户登入的策略
 * @author baozi
 * @data   2021/6/13
 */
public class MyAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    public MyAuthenticationSuccessHandler() {}

    /**
     * 判断用户的身份，1为捐赠者，2为管理员，3为贫困者 对应不同的返回策略
     *
     * @param request        请求
     * @param response       响应
     * @param authentication 用户权限[User-3, MANAGER-2]
     */
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        //输出
        PrintWriter writer = response.getWriter();
        //得到用户信息
        User user = (User)authentication.getPrincipal();
        //获取用户的权限
        Collection<GrantedAuthority> careerList = user.getAuthorities();
        //获取集合流->对Authority权限进行字符串转换->只取一个元素->从集合切割字符串->得到字符串
        String career = careerList.stream().map(s -> s.toString()).limit(1).reduce("", String::concat);
        if(StringUtils.equals(career,"MANAGER")){
            //管理员登入
            writer.println(CommonPress.MANAGER_LOGIN.getValue());
        }else{
            //普通用户登入
            writer.println(CommonPress.USER_LOGIN.getValue());
        }

    }
}

