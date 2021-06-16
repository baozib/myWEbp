package com.baozi.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baozi.domain.manager.Manager;
import com.baozi.domain.manager.ManagerAid;
import com.baozi.domain.manager.ManagerCareer;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 管理员数据访问层
 * @desc
 * @author baozi
 * @data   2021/6/12
 */
@Repository
public interface ManagerMapper<T> extends BaseMapper<T> {

    /**
     * 查询所有需要管理的资助名单
     * @return 返回所有管理员管理的贫困者的援助表
     */
    List<T> getAidMessage();

    /**
     * 查询所有需要管理的评论表
     * @return 返回所有管理员管理的用户评论表
     */
    List<T> getCommMessage();

    /**
     * 查询所有需要审核的身份
     * @return 返回所有管理员审核的身份表
     */
    List<T> getCareerMessage();

    /**
     * 拒绝用户的求援
     * @param id 求助表编号
     * @return
     */
    Integer deleteAid(String id);

    /**
     * 拒绝用户的身份申请
     * @param id 申请身份表编号
     * @return
     */
    Integer deleteCareer(String id);

    /**
     * 根据用户id查询用户想申请的职位
     * @param id 职位表编号
     */
    ManagerCareer selectCareer(String id);

    /**
     * 修改用户职位
     * @param mc 用户想改变的职位
     * @return
     */
    Integer updateUserCareer(ManagerCareer mc);

    /**
     * 让贫困者的贫困申请通过
     * @param id 贫困表的编号
     */
    Integer useAidApply(String id);


}
