package cn.kgc.service.impl;

import cn.kgc.mapper.OrderMapper;
import cn.kgc.mapper.ProcessMapper;
import cn.kgc.pojo.Order;
import cn.kgc.pojo.Process;
import cn.kgc.service.IOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrderService implements IOrderService {

    @Resource
    private OrderMapper orderMapper;

    @Resource
    private ProcessMapper processMapper;

    @Override
    public PageInfo findList(Integer productLine, String machineType,int page,int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Order> list = orderMapper.findList(productLine,machineType);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public PageInfo findCheckList(String leader, String machineType, String NextId ,int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Order> list = orderMapper.findCheckList(leader,machineType,NextId);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int updateToCheck(Order record) {
        return orderMapper.updateToCheck(record);
    }

    @Override
    public List<int[]> getPro11() {
        List<int[]> list = new ArrayList<int[]>();
        String type = "M00";
        for (int i = 1; i < 6; i++) {
            type += i;
            int[] temp = new int[5];
            List<Order> orderList = (orderMapper.getPro11(type.toString()));
            //判断是否有空值，有空值用0替代
            for (int j = 0; j < orderList.size(); j++) {
                temp[Integer.valueOf(orderList.get(j).getProductline())-1] = orderList.get(j).getTargetnum();
            }
            type = "M00";
            list.add(temp);
        }
        return list;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return orderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Order record) {
        return orderMapper.insert(record);
    }

    @Override
    public int insertSave(Order record) {
        return orderMapper.insertSave(record);
    }

    @Override
    public int insertSelective(Order record) {
        return orderMapper.insertSelective(record);
    }

    @Override
    public Order selectByPrimaryKey(Integer id) {
        return orderMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Order record) {
        return orderMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Order record) {
        return orderMapper.updateByPrimaryKey(record);
    }
}
