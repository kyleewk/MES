package cn.kgc.service;

import cn.kgc.pojo.InvSave;
import com.github.pagehelper.PageInfo;

public interface InvSaveService {
    int deleteByPrimaryKey(Integer id);

    int insert(InvSave record);

    int insertSelective(InvSave record);

    InvSave selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvSave record);

    int updateByPrimaryKey(InvSave record);

    PageInfo findList(Integer id, String team, int page, int pageSize);
}
