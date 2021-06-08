package com.baozi.mapper;


import java.util.List;

/**
 *
 * @desc   管理员专有操作
 * @author baozi
 * @data   2021/5/20
 */
public interface ManagerMapper<T> extends BaseMapper<T> {

    /**
     * 查询所有需要管理的用户身份
     * @return 需要管理的Manager_Career表集合
     */
    List<T> selectAllCareer();

    /**
     * 查询所有贫困者上传的求助
     * @return 需要上传的Manager_Aid表的集合
     */
    List<T> selectAllAid();

    /**
     * 查询所有需要裁决的评论
     * @return 需要裁决的Manager_Comm表的集合
     */
    List<T> selectAllComm();

    /**
     * 拒绝贫困者的贫困物资申请
     * @param t 为ManagerAid实例
     * @return  成功返回1，反之0
     */
    int deleteUserAid(T t);

    /**
     * 接受贫困者的贫困物资申请
     * @param t 为PoorApply实例
     * @return  成功返回1，反之0
     */
    int updatePoorApply(T t);

    /**
     * 拒绝用户身份申请
     * @param t ManagerCareer实例
     * @return  成功为1，反之0
     */
    int deleteUserCareer(T t);

    /**
     * 接受用户身份申请
     * @param t 为User表
     * @return  成功返回1，反之0
     */
    int updateUserCareer(T t);

    /**
     * 评价内容
     * @param t ManagerComm实例
     * @return 返回字段content内容
     */
    String selectCommContent(T t);


}
