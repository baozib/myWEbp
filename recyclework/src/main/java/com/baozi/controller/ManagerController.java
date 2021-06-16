package com.baozi.controller;


import com.alibaba.druid.support.json.JSONUtils;
import com.baozi.domain.manager.Manager;
import com.baozi.mapper.ManagerMapper;
import com.baozi.service.ManagerService;
import com.google.gson.Gson;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 管理员接口
 *
 * @author baozi
 * @data   2021/6/14
 */
@Controller
@Api(tags = "管理员接口")
@RequestMapping("/2")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @Autowired
    private Gson gson;


    @ApiOperation("获取所有求援申请")
    @GetMapping("/manager_aid")
    @ResponseBody
    public String getAidMessage(){
        List aidMessages = managerService.getAidMessage();
        return gson.toJson(aidMessages);
    }


    @ApiOperation("获取所有身份申请")
    @GetMapping("/manager_career")
    @ResponseBody
    public String getCareerMessage(){
        List careerMessages = managerService.getCareerMessage();
        return gson.toJson(careerMessages);
    }

    @ApiOperation("获取所有评论表的信息")
    @GetMapping("/manager_comm")
    @ResponseBody
    public String getCommMessage(){
        List commMessages = managerService.getCommMessage();
        return gson.toJson(commMessages);
    }


    @ApiOperation("修改用户身份 action=accept 为接受 action=refuse 为拒绝")
    @PatchMapping("/updateId")
    @ResponseBody
    public Integer patchCareer(@RequestParam @ApiParam("身份表id") String id,
                              String action) {
        Integer result = null;
        if(StringUtils.equals("accept",action)){
            result = managerService.patchCareer(id);
        }else{
            result = managerService.refuseCareer(id);
        }
        return result;
    }

    @ApiOperation("修改贫困者贫困申请 action=accept 为接受 action=refuse 为拒绝")
    @PatchMapping("/updateAid")
    @ResponseBody
    public Integer patchAid(@RequestParam @ApiParam("求助表id") String id,
                           String action){
        Integer result = null;
        if(StringUtils.equals("accept",action)){
            result = managerService.patchAid(id);
        }else{
            result = managerService.refuseAid(id);
        }
        return result;
    }

    @ApiOperation("修改用户评价表")
    @PatchMapping("/updateComm")
    @ResponseBody
    public Integer patchComm(@RequestParam @ApiParam("用户id") String userId) {

        return null;
    }

}
