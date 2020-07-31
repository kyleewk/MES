package cn.kgc.service;

import cn.kgc.pojo.QualityLog;
import com.github.pagehelper.PageInfo;

public interface IQualityLogService {
    PageInfo findList(Integer orderid,int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(QualityLog record);

    int insertSelective(QualityLog record);

    QualityLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QualityLog record);

    int updateByPrimaryKey(QualityLog record);
}
