package cn.kgc.service;

import cn.kgc.pojo.CraftCheck;
import com.github.pagehelper.PageInfo;

public interface CraftCheckService {

    int deleteByPrimaryKey(Integer id);

    int insert(CraftCheck record);

    int insertSelective(CraftCheck record);

    CraftCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftCheck record);

    int updateByPrimaryKey(CraftCheck record);

    PageInfo findList(String machinetype, String applicantname, int page, int pageSize);
}
