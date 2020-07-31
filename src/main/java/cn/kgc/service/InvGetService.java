package cn.kgc.service;

import cn.kgc.pojo.InvGet;
import cn.kgc.pojo.InvSave;
import com.github.pagehelper.PageInfo;

public interface InvGetService {
    int deleteByPrimaryKey(Integer id);

    int insert(InvGet record);

    int insert1(InvSave record);

    int insertSelective(InvGet record);

    InvGet selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvGet record);

    int updateByPrimaryKey(InvGet record);

    PageInfo findList(String team, String leader, int page, int pageSize);
}
