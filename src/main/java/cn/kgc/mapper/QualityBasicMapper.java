package cn.kgc.mapper;

import cn.kgc.pojo.QualityBasic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QualityBasicMapper {

    List<QualityBasic> findList(@Param("type") String type, @Param("project") String project);

    int deleteByPrimaryKey(Integer id);

    int insert(QualityBasic record);

    int insertSelective(QualityBasic record);

    QualityBasic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QualityBasic record);

    int updateByPrimaryKey(QualityBasic record);
}