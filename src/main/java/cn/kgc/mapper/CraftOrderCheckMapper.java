package cn.kgc.mapper;

import cn.kgc.pojo.CraftOrderCheck;

public interface CraftOrderCheckMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CraftOrderCheck record);

    int insertSelective(CraftOrderCheck record);

    CraftOrderCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CraftOrderCheck record);

    int updateByPrimaryKey(CraftOrderCheck record);
}