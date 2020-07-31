package cn.kgc.mapper;

import cn.kgc.pojo.Process;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProcessMapper {

    List<Process> findList(@Param("orderid") Integer orderid, @Param("status") Integer status);

    int deleteByPrimaryKey(Integer id);

    int insert(Process record);

    int insertSelective(Process record);

    Process selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Process record);

    int updateByPrimaryKey(Process record);

    //获取生产进度图表所需信息
    List<Process> getPro3();


    //获取月良率
    List<Process> getYield();

    //获取月产量
    int sum();

    //获取暂停工单数量
    int getPending();

    //审批完成后增加工单跟踪
    int insertPro(@Param("orderid") Integer orderid);

    //获取主页进度信息
    List<Process> forIndexProcess();

}