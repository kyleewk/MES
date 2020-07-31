package cn.kgc.service;

import cn.kgc.pojo.CraftCheckRes;
import com.github.pagehelper.PageInfo;

public interface CraftCheckResService {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftCheckRes record);

    int insertSelective(CraftCheckRes record);

    CraftCheckRes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftCheckRes record);

    int updateByPrimaryKey(CraftCheckRes record);

    PageInfo findList(Integer checkid, int page, int pageSize);
}
