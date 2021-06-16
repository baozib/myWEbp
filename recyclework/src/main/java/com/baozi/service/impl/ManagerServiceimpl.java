package com.baozi.service.impl;


import com.baozi.domain.manager.Manager;
import com.baozi.domain.manager.ManagerCareer;
import com.baozi.mapper.ManagerMapper;
import com.baozi.service.ManagerService;
import com.baozi.utils.CommonPress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManagerServiceimpl implements ManagerService<Manager> {

    /**
     * 数据访问管理层
     */
    @Autowired
    private ManagerMapper mapper;


    /**
     * 获得管理的所有的职位信息
     * @return
     */
    @Override
    public List<Manager> getCareerMessage() {
        return mapper.getCareerMessage();
    }

    /**
     * 获得管理的所有求助信息
     * @return
     */
    @Override
    public List<Manager> getAidMessage() {
        return mapper.getAidMessage();
    }

    /**
     * 获得管理的评论表信息
     * @return
     */
    @Override
    public List<Manager> getCommMessage() {
        return mapper.getCommMessage();
    }

    /**
     * 接受用户的身份申请
     * @param id 身份表id
     * @return 返回是否修改成功
     */
    @Override
    public Integer patchCareer(String id) {
        ManagerCareer managerCareer = mapper.selectCareer(id);
        Integer result = mapper.updateUserCareer(managerCareer);
        if(result == 1){
            refuseCareer(id);
        }
        return result;
    }

    /**
     * 接受用户的求援申请
     * @param id 求援表id
     * @return
     */
    @Override
    public Integer patchAid(String id) {
        Integer result = mapper.useAidApply(id);
        if(result == 1){
           refuseAid(id);
        }
        return result;
    }

    /**
     * 删除用户的身份申请
     * @param id 用户的id
     * @return 为SUCCESS删除成功，FAIl失败
     */
    @Override
    public Integer refuseCareer(String id) {
        Integer result = mapper.deleteCareer(id);
        if(result == 1){
            return CommonPress.SUCCESS.getValue();
        }
        return CommonPress.FAIL.getValue();
    }

    /**
     * 删除用户的援助申请
     * @param id 用户的id
     * @return 为SUCCESS删除成功，FAIl失败
     */
    @Override
    public Integer refuseAid(String id) {
        Integer result = mapper.deleteAid(id);
        if(result == 1){
            return CommonPress.SUCCESS.getValue();
        }
        return CommonPress.FAIL.getValue();
    }
}
