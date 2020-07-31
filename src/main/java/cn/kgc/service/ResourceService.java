package cn.kgc.service;

import cn.kgc.pojo.Resource;
import com.github.pagehelper.PageInfo;

public interface ResourceService {
    int deleteByPrimaryKey(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);

    PageInfo findList(Integer id, int page, int pageSize);

    //获取每月的库存量
    int[] getStore();

    //获取每月的剩余量
    int[] getRemains();

    //获取最新库存用量信息
    double upStore();

}
