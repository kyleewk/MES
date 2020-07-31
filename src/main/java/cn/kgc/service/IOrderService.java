package cn.kgc.service;

import cn.kgc.pojo.Order;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IOrderService {

    PageInfo findList(Integer productLine, String machineType, int page, int pageSize);

    PageInfo findCheckList(String leader, String machineType,String NextId, int page, int pageSize);

    //获取产能图标数据
    List<int[]> getPro11();

    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    //保存
    int insertSave(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    //用于审批更新状态，只更新下一步处理人及状态
    int updateToCheck(Order record);
}
