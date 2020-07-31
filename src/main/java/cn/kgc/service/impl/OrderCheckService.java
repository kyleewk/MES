package cn.kgc.service.impl;

import cn.kgc.mapper.OrderCheckMapper;
import cn.kgc.pojo.OrderCheck;
import cn.kgc.service.IOrderCheckService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderCheckService implements IOrderCheckService {

    @Resource
    private OrderCheckMapper orderCheckMapper;

    @Override
    public PageInfo findList(Integer orderid, String leader, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<OrderCheck> list = orderCheckMapper.findList(orderid,leader);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public List<OrderCheck> selectByOrderId(Integer id) {
        return orderCheckMapper.selectByOrderId(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return orderCheckMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(OrderCheck record) {
        return orderCheckMapper.insert(record);
    }

    @Override
    public int insertSelective(OrderCheck record) {
        return 0;
    }

    @Override
    public OrderCheck selectByPrimaryKey(Integer id) {
        return orderCheckMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(OrderCheck record) {
        return orderCheckMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(OrderCheck record) {
        return 0;
    }
}
