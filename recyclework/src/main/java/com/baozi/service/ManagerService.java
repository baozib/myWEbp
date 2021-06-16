package com.baozi.service;


import java.util.List;

/**
 *
 * 管理员业务接口
 * @author baozi
 * @data   2021/6/14
 */
public interface ManagerService<T> {

    /**
     * 查找所有管理员管理的用户身份信息
     * @return 返回ManagerCareer集合
     */
    List<T> getCareerMessage();

    /**
     * 查找所有管理员管理的援助信息
     * @return 返回ManagerAid集合
     */
    List<T> getAidMessage();

    /**
     * 查找所有管理员管理的评论表信息
     * @return 返回ManagerComm集合
     */
    List<T> getCommMessage();

    /**
     * 接受用户的身份申请
     * @param id 用户的id
     */
    Integer patchCareer(String id);

    /**
     * 接受用户的资助申请
     * @param id 用户的id
     */
    Integer patchAid(String id);

    /**
     * 拒绝用户的身份申请
     * @param id 用户的id
     */
    Integer refuseCareer(String id);

    /**
     * 拒绝用户的资助申请
     * @param id 用户的id
     */
    Integer refuseAid(String id);



}
