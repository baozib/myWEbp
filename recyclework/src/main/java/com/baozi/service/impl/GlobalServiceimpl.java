package com.baozi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.domain.User;
import com.baozi.mapper.GloBalMapper;
import com.baozi.service.GlobalService;
import com.baozi.utils.CommonPress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 *
 * @desc   通用层实现类
 * @author baozi
 * @data   2021/6/13
 */
@Service
public class GlobalServiceimpl implements GlobalService<User> {


    /**
     * [result] 注册返回的结果集
     */
    private CommonPress result;

    /**
     * [gm] 注入公用数据访问层
     */
    @Autowired
    private GloBalMapper gm;

    /**
     * [pw] 注入加密算法
     */
    @Autowired
    private PasswordEncoder pw;

    /**
     * 注册业务实现
     * @return 1:账户重复 2:邮箱重复 3:注册成功
     */
    @Override
    public Integer register(User user) {
        //查看是否存在username
        User username = gm.selectOne(new QueryWrapper<User>().eq("username", user.getUsername()));
        Optional.ofNullable(username).ifPresentOrElse((us) -> {
            //存在直接赋值重复账户
            result = CommonPress.REPEAT_USERNAME;
        }, () -> {
            //查看是否存在邮箱
            User mailbox = gm.selectOne(new QueryWrapper<User>().eq("mailbox", user.getMailbox()));
            Optional.ofNullable(mailbox).ifPresentOrElse((em) -> {
                //存在直接赋值重复邮箱
                result = CommonPress.REPEAT_MAILBOX;
            }, () -> {
                //创建用户 加密密码SHA-256 +随机盐+密钥对密码
                String encode = pw.encode(user.getPassword());
                user.setPassword(encode);
                gm.insert(user);
                result = CommonPress.SUCCESS;
            });
        });
        return result.getValue();
    }
}
