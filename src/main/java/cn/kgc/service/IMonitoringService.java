package cn.kgc.service;

import cn.kgc.pojo.Monitoring;
import com.github.pagehelper.PageInfo;


public interface IMonitoringService {
    PageInfo findList(Integer id,String devicename,int page,int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Monitoring record);

    int insertSelective(Monitoring record);

    Monitoring selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Monitoring record);

    int updateByPrimaryKey(Monitoring record);
}
