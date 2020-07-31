package cn.kgc.mapper;

import cn.kgc.pojo.QualityLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QualityLogMapper {

    List<QualityLog> findList(@Param("orderid") Integer orderid);


    int deleteByPrimaryKey(Integer id);

    int insert(QualityLog record);

    int insertSelective(QualityLog record);

    QualityLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QualityLog record);

    int updateByPrimaryKey(QualityLog record);
}