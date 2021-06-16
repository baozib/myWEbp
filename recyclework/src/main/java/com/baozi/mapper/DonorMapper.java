package com.baozi.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baozi.domain.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 * @desc   捐赠者数据访问层
 * @author baozi
 * @data   2021/6/12
 */
@Repository
public interface DonorMapper extends BaseMapper {

    List<Type> selectType();

}
