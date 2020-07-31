package cn.kgc.mapper;

import cn.kgc.pojo.Repair;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RepairMapper {

    List<Repair> findList(@Param("orderid") Integer orderid, @Param("applicantname") String applicantname);

    int deleteByPrimaryKey(Integer id);

    int insert(Repair record);

    int insertSelective(Repair record);

    Repair selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Repair record);

    int updateByPrimaryKey(Repair record);
}