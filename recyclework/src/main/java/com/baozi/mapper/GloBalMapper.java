package com.baozi.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baozi.domain.User;
import org.springframework.stereotype.Repository;

/**
 *
 * @desc   通用数据访问层
 * @author baozi
 * @data   2021/6/12
 */
@Repository
public interface GloBalMapper extends BaseMapper<User> {
}
