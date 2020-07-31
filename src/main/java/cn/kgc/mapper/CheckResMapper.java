package cn.kgc.mapper;

import cn.kgc.pojo.CheckRes;

public interface CheckResMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckRes record);

    int insertSelective(CheckRes record);

    CheckRes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckRes record);

    int updateByPrimaryKey(CheckRes record);
}