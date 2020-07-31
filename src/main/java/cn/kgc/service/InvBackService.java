package cn.kgc.service;

import cn.kgc.pojo.InvBack;
import com.github.pagehelper.PageInfo;

public interface InvBackService {
    int deleteByPrimaryKey(Integer id);

    int insert(InvBack record);

    int insertSelective(InvBack record);

    InvBack selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvBack record);

    int updateByPrimaryKey(InvBack record);

    PageInfo findList(Integer id, String team, int page, int pageSize);
}
