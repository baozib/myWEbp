package com.baozi.mapper;

import java.util.List;

/**
 *
 * @desc   捐赠者专有操作
 * @author baozi
 * @data   2021/5/31
 */
public interface DonorMapper<T> extends BaseMapper<T> {

    /**
     * 添加捐赠者物资
     * @param t
     * @return
     */
    int insertStuff(T t);

    /**
     *
     * @return
     */
    List<T> selectType();

    /**
     *
     * @param t
     * @return
     */
    int insertDepotid(T t);

    /**
     *
     * @param t
     * @return
     */
    T selectDonor(T t);

}
