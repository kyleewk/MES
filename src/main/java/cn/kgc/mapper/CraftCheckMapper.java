package cn.kgc.mapper;

import cn.kgc.pojo.CraftCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CraftCheckMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftCheck record);

    int insertSelective(CraftCheck record);

    CraftCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftCheck record);

    int updateByPrimaryKey(CraftCheck record);

    List<CraftCheck>findList(@Param("machinetype") String machinetype, @Param("applicantname") String applicantname);
}