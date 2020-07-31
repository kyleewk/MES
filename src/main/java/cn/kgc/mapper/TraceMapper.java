package cn.kgc.mapper;

import cn.kgc.pojo.Trace;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TraceMapper {

    List<Trace> findList(@Param("productLine") Integer productLine, @Param("orderId") Integer orderId);


    int deleteByPrimaryKey(Integer id);

    int insert(Trace record);

    int insertSelective(Trace record);

    Trace selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Trace record);

    int updateByPrimaryKey(Trace record);
}