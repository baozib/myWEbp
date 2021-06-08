package com.baozi.service.api;

import java.util.List;

public interface DonorService<T> {

    /**
     * 展示所有的类型
     * @return
     */
    List<T> showType();

}
