package cn.kgc.mapper;

import cn.kgc.pojo.Perm;

public interface PermMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Perm record);

    int insertSelective(Perm record);

    Perm selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Perm record);

    int updateByPrimaryKey(Perm record);
}