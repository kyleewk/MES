package cn.kgc.mapper;

import cn.kgc.pojo.InvGet;
import cn.kgc.pojo.InvSave;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InvGetMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InvGet record);

    int insert1(InvSave record);

    int insertSelective(InvGet record);

    InvGet selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvGet record);

    int updateByPrimaryKey(InvGet record);

    List<InvGet> findList(@Param("team") String team, @Param("leader") String leader);
}