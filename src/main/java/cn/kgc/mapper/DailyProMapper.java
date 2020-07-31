package cn.kgc.mapper;

import cn.kgc.pojo.DailyPro;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DailyProMapper {

    List<DailyPro> findList(@Param("orderid") Integer orderid);


    int deleteByPrimaryKey(Integer id);

    int insert(DailyPro record);

    int insertSelective(DailyPro record);

    DailyPro selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DailyPro record);

    int updateByPrimaryKey(DailyPro record);
}