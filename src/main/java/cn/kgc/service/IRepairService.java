package cn.kgc.service;

import cn.kgc.pojo.Repair;
import com.github.pagehelper.PageInfo;

public interface IRepairService {

    PageInfo findList(Integer orderid,String applicantname, int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Repair record);

    int insertSelective(Repair record);

    Repair selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Repair record);

    int updateByPrimaryKey(Repair record);
}
