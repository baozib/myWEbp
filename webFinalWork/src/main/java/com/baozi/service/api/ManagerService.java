package com.baozi.service.api;

import java.util.List;

/**
 *
 * @desc   管理员业务，用来管理所有管理员Dao层操作
 * @author baozi
 * @data   2021/5/30
 */
public interface ManagerService<T> {

    /**
     * 展示所有‘需要救助表’的信息
     * @return 返回List集合给Web层处理
     */
    List<T> showAllAid();

    /**
     * 展示所有’评论审核表‘的信息
     * @return 返回List集合给Web层处理
     */
    List<T> showAllComm();

    /**
     * 展示所有'职位申请表'的信息
     * @return 返回List集合给Web层处理
     */
    List<T> showAllCareer();

    /**
     * 拒绝用户申请的职位
     * @param t 用户返回的用户名(UUID)
     * @return 返回操作条数
     */
    int refuseCareer(T t);

    /**
     * 接受用户申请的职位
     * @param t 为User表
     * @return  成功返回1 反之0
     */
    int acceptCareer();

    /**
     * 拒绝贫困者申请资助
     * @param t Manager
     * @return  返回操作条数
     */
    int refuseAid(T t);

    /**
     * 接受贫困者申请资助
     * @param t 为ManagerAid表
     * @return  成功返回1 反之0
     */
    int acceptAid(T t);

    /**
     * 展示对应的评论内容
     * @param t ManagerComm实例对象
     * @return 返回Content内容
     */
    String showCommContent(T t);
}
