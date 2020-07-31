package cn.kgc.mapper;

import cn.kgc.pojo.InvBack;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InvBackMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InvBack record);

    int insertSelective(InvBack record);

    InvBack selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InvBack record);

    int updateByPrimaryKey(InvBack record);

    List<InvBack> findList(@Param("id") Integer id, @Param("team") String team);
}