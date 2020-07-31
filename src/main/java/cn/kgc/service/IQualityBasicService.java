package cn.kgc.service;

import cn.kgc.pojo.QualityBasic;
import com.github.pagehelper.PageInfo;

public interface IQualityBasicService {

    PageInfo findList(String type,String project, int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(QualityBasic record);

    int insertSelective(QualityBasic record);

    QualityBasic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QualityBasic record);

    int updateByPrimaryKey(QualityBasic record);
}
