package cn.kgc.mapper;

import cn.kgc.pojo.CraftList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CraftListMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftList record);

    int insertSelective(CraftList record);

    CraftList selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftList record);

    int updateByPrimaryKey(CraftList record);

    List<CraftList> findList(@Param("machineType")String machineType, @Param("craftName")String craftName);

    //根据机型查询工艺信息
    CraftList selectByMachineType(@Param("machinetype")String machinetype);
}