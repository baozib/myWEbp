package com.baozi.service.impl;

import com.baozi.mapper.DonorMapper;
import com.baozi.service.api.DonorService;
import com.baozi.utils.MyTemplate;

import java.util.List;

public class DonorServiceImpl extends MyTemplate
    implements DonorService {

    private List list;

    @Override
    public List showType() {
        process(sqlSession -> {
            DonorMapper mapper = sqlSession.getMapper(DonorMapper.class);
            list = mapper.selectType();
        });
        return list;
    }
}
