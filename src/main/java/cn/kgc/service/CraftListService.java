package cn.kgc.service;

import cn.kgc.pojo.CraftList;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

public interface CraftListService    {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftList record);

    int insertSelective(CraftList record);

    CraftList selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftList record);

    int updateByPrimaryKey(CraftList record);

    PageInfo findList(String machineType, String craftName, int page, int pageSize);

    //根据机型查询工艺信息
    CraftList selectByMachineType(@Param("machinetype")String machinetype);
}
