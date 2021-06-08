package com.baozi.pojo.manager;

import com.baozi.utils.myframe.AffluxPojo;

import java.util.Map;

/**
 *
 * @desc   管理员操作基类，以此类作为参数，实现多态
 * @author baozi
 * @data   2021/5/30
 */
public class Manager {

    /**
     * 子类可操作此方法，完成自动赋值
     * @param map 用户传入的paramMap参数
     * @return 返回子类对应实例
     */
    public Manager Assignment(Map map) {
        AffluxPojo.affluxResult(this,map);
        return this;
    }

}
