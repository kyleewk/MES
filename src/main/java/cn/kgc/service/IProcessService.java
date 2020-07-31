package cn.kgc.service;

import cn.kgc.pojo.Process;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IProcessService {

    PageInfo findList(Integer orderid,Integer status,int page,int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Process record);

    int insertSelective(Process record);

    Process selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Process record);

    int updateByPrimaryKey(Process record);

    List<double[]> getPro3();

    double[] getYield();

    int sum();

    int getPending();

    //审批完成后增加工单跟踪
    int insertPro(@Param("orderid") Integer orderid);

    //获取主页进度信息
    List<Process> forIndexProcess();

}
