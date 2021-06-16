package com.baozi.controller;

import com.baozi.domain.User;
import com.baozi.service.GlobalService;
import com.baozi.service.impl.GlobalServiceimpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 *
 * 通用接口层
 * [/login 登入页面, /reg 注册页面, /main-page 用户主页面, /reg-sure 注册确认按钮, /manager 管理员页面]
 * @author baozi
 * @data   2021/6/12
 */
@Controller
@RequestMapping("/recycle-platform")
@Api(tags = "通用接口")
public class GlobalController {

    /**
     * [global] 注入global通用业务层实现类
     */
    @Autowired
    private GlobalService global;

    /**
     * 用户登入界面 拦截器拦截了所有的请求，没认证之前跳转到这个接口
     *
     * @return 返回跳转的登入页面
     */
    @SuppressWarnings(value = "all")
    @ApiOperation("所有请求跳转到登入页")
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String indexPage() {

        return "loginPage";
    }

    /**
     * 用户注册界面
     *
     * @return 返回跳转的注册页面
     */
    @SuppressWarnings(value = "all")
    @ApiOperation("注册页面")
    @GetMapping(value = "/reg")
    public String registerPage() {
        return "registerPage";
    }

    /**
     * 普通用户主页
     *
     * @return
     */
    @SuppressWarnings(value = "all")
    @ApiOperation("用户主页")
    @GetMapping(value = "/main-page")
    public String mainPage() {
        return "indexPage2";
    }

    /**
     * 注册接口
     *
     * @param user
     * @return
     */
    @ApiOperation("注册按钮接口")
    @PostMapping(value = "/reg-sure")
    @ResponseBody
    public Integer regSure(@ApiParam("用户信息[名称,账号,密码,邮箱]") @RequestBody User user) {
        System.out.println(user);
        Integer result = global.register(user);
        return result;
    }

    /**
     * 管理员页面
     * @return
     */
    @ApiOperation("管理员主页")
    @GetMapping(value = "/manager")
    public String managerPage(){
        return "manger-page";
    }



}
