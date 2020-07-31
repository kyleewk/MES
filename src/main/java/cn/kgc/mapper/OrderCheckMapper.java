package cn.kgc.mapper;

import cn.kgc.pojo.OrderCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderCheckMapper {
    List<OrderCheck> findList(@Param("orderid") Integer orderid, @Param("leader") String leader);

    List<OrderCheck> selectByOrderId(@Param("id") Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderCheck record);

    int insertSelective(OrderCheck record);

    OrderCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderCheck record);

    int updateByPrimaryKey(OrderCheck record);
}