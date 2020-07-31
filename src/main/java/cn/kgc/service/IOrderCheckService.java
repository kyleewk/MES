package cn.kgc.service;

import cn.kgc.pojo.OrderCheck;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface IOrderCheckService {

    PageInfo findList(Integer orderid, String leader, int page, int pageSize);

    List<OrderCheck> selectByOrderId(Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderCheck record);

    int insertSelective(OrderCheck record);

    OrderCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderCheck record);

    int updateByPrimaryKey(OrderCheck record);

}
