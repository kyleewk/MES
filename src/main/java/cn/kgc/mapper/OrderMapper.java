package cn.kgc.mapper;

import cn.kgc.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    List<Order> findList(@Param("productLine") Integer productLine, @Param("machineType") String machineType);

    List<Order> findCheckList(@Param("leader") String leader, @Param("machineType") String machineType , @Param("NextId") String NextId );

    //获取产能图标数据
    List<Order> getPro11(@Param("machinetype") String machinetype);

    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    //保存
    int insertSave(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    int updateToCheck(Order record);


}