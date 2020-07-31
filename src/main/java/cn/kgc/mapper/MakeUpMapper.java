package cn.kgc.mapper;

import cn.kgc.pojo.MakeUp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MakeUpMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MakeUp record);

    int insertSelective(MakeUp record);

    MakeUp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MakeUp record);

    int updateByPrimaryKey(MakeUp record);

    List<MakeUp>findList(@Param("id") Integer id);
}