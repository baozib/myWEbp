package com.baozi.service.api;

import com.baozi.anno.API;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 *
 * @desc   业务层基类，为子类提供服务
 * @author baozi
 * @data   2021/5/20
 */
public interface BaseService<T> {
    /**
     *
     * @return  返回User的所有参数和Donor的所有参数
     */
    Map login();

    /**
     * @return  返回值为-1代表 账户存在 返回值为0代表 邮箱存在 返回值为1代表返回成功
     */
    int register();

    /**
     * 将上传的文件保存到服务器，图片名字保存到数据库AVATAR字段
     * @param request  请求参数
     * @param response 响应参数
     */
    void fileUpload(HttpServletRequest request, HttpServletResponse response);

    /**
     * 修改用户个人信息面
     * @return
     */
    void updateMessage(T t);

}
