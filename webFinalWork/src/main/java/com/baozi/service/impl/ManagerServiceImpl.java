package com.baozi.service.impl;

import com.baozi.mapper.ManagerMapper;
import com.baozi.pojo.gereral.User;
import com.baozi.pojo.manager.Manager;
import com.baozi.pojo.manager.ManagerCareer;
import com.baozi.pojo.manager.ManagerComm;
import com.baozi.service.api.ManagerService;
import com.baozi.utils.MyTemplate;
import com.baozi.utils.MybatisUtils;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;


@AllArgsConstructor
public class ManagerServiceImpl extends MyTemplate
    implements ManagerService<Manager> {

    private List<Manager> listManager;
    private int judge;
    private StringBuffer sb = new StringBuffer();
    private User user;

    public ManagerServiceImpl(){
        listManager = new ArrayList<>();
    }
    public ManagerServiceImpl(User user) {
        this.user = Objects.requireNonNull(user);
    }


    @Override
    public List<Manager> showAllAid() {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            listManager = mapper.selectAllAid();
        });
        return listManager;
    }

    @Override
    public List<Manager> showAllComm() {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            listManager = mapper.selectAllComm();
        });
        return listManager;
    }

    @Override
    public List<Manager> showAllCareer() {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            listManager = mapper.selectAllCareer();
        });
        return listManager;
    }

    @Override
    public int refuseCareer(Manager manager) {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            judge = mapper.deleteUserCareer(manager);
        });
        return judge;
    }

    @Override
    public int acceptCareer() {
        process(sqlSession -> {
            ManagerMapper<User> mapper = sqlSession.getMapper(ManagerMapper.class);
            judge = mapper.updateUserCareer(user);
            if(judge != 0){
                refuseCareer(ManagerCareer.builder().userId(user.getUuid()).build());
            }
        });
        return judge;
    }

    @Override
    public int refuseAid(Manager manager) {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            judge = mapper.deleteUserAid(manager);
        });
        return judge;
    }

    @Override
    public int acceptAid(Manager manager) {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            judge = mapper.updatePoorApply(manager);
            if(judge != 0){
                refuseAid(manager);
            }
        });
        return judge;
    }

    @Override
    public String showCommContent(Manager manager) {
        process(sqlSession -> {
            ManagerMapper<Manager> mapper = sqlSession.getMapper(ManagerMapper.class);
            sb.append(mapper.selectCommContent(manager));
        });
        return sb.toString();
    }



}
