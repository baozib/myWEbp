package com.baozi.config;


import com.baozi.handle.MyAuthenticationSuccessHandler;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


/**
 *
 * Security安全认证和授权认证
 * @author baozi
 * @data   2021/6/12
 */
@Configuration
public class MySecurityConfigurerAdapter extends WebSecurityConfigurerAdapter {

    /**
     * 对静态资源进行放行
     *
     * @param web HTTP请求安全处理器
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        //对CSS样式进行放行
        web.ignoring().antMatchers("/CSS/**");
        //对IMAGES静态图片进行放行
        web.ignoring().antMatchers("/images/**");
        //对JS进行放行
        web.ignoring().antMatchers("/JS/**");
        //对JSON假数据进行放行
        web.ignoring().antMatchers("/json/**");


        // 过滤swaager2界面
        web.ignoring().antMatchers(
            "/swagger-ui.html",
            // swagger api json
            "/v2/api-docs",
            // 用来获取支持的动作
            "/swagger-resources/configuration/ui",
            // 用来获取api-docs的URI
            "/swagger-resources",
            // 安全选项
            "/swagger-resources/configuration/security",
            "/swagger-resources/**",
            //补充路径，近期在搭建swagger接口文档时，通过浏览器控制台发现该/webjars路径下的文件被拦截，故加上此过滤条件即可。
            "/webjars/**"
        );


    }

    /**
     * 设置登入页面，登入页面的逻辑添加，登入成功逻辑，登入权限
     *
     * @param http HTTP请求安全处理器
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                //表单提交
                .formLogin()
                //添加默认初始化登入页面为/RecyclePlatform/Login
                .loginPage("/recycle-platform/login")
                //添加登入逻辑
                .loginProcessingUrl("/recycle-platform/login-process")
                //添加登入成功逻辑
                .successHandler(new MyAuthenticationSuccessHandler());


        http    //授权
                .authorizeRequests()
                //放行登入接口
                .antMatchers("/recycle-platform/login").permitAll()
                //放行注册接口
                .antMatchers("/recycle-platform/reg").permitAll()
                //放行注册确认接口
                .antMatchers("/recycle-platform/reg-sure").permitAll()
                //让所有请求必须授权
                .anyRequest().authenticated();

        http
                //取消防火墙
                .csrf().disable();
    }

    /**
     * 把加密类放入容器
     * @return 返回对应的加密子类
     */
    @Bean
    public PasswordEncoder getPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

}
