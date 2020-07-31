package cn.kgc.service;

import cn.kgc.pojo.Maintain;
import com.github.pagehelper.PageInfo;


public interface IMaintainService {
    PageInfo findList(String devicename, String specification,int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Maintain record);

    int insertSelective(Maintain record);

    Maintain selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Maintain record);

    int updateByPrimaryKey(Maintain record);
}
