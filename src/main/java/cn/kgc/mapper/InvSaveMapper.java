package cn.kgc.mapper;

import cn.kgc.pojo.InvSave;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InvSaveMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InvSave record);

    int insertSelective(InvSave record);

    InvSave selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvSave record);

    int updateByPrimaryKey(InvSave record);

    List<InvSave> findList(@Param("id")  Integer seq, @Param("team") String team);
}