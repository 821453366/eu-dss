package com.eu.dss.dao;

import com.eu.dss.entity.PageBean;
import com.eu.dss.entity.TronClass;

import java.util.List;

/**
 * 创课点击次数
 * 马欢欢
 * Created by 马欢欢 on 2017/5/13.
 */
public interface TronClassDao {
    /**
     * 查询创课点击次数
     *
     */
    List<TronClass> tronClass();

    /**
     * 分页查询数据
     */
    List<TronClass> insertProfession(PageBean pageBean) throws Exception;






}
