package cn.kgc.service;

import cn.kgc.pojo.MakeUp;
import com.github.pagehelper.PageInfo;

public interface MakeUpService {
    int deleteByPrimaryKey(Integer id);

    int insert(MakeUp record);

    int insertSelective(MakeUp record);

    MakeUp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MakeUp record);

    int updateByPrimaryKey(MakeUp record);

    PageInfo findList(Integer id, int page, int pageSize);
}
