package cn.kgc.mapper;

import cn.kgc.pojo.CraftCheckRes;

import java.util.List;

public interface CraftCheckResMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftCheckRes record);

    int insertSelective(CraftCheckRes record);

    CraftCheckRes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftCheckRes record);

    int updateByPrimaryKey(CraftCheckRes record);

    List<CraftCheckRes> findList(Integer checkid);
}