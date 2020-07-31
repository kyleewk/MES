package cn.kgc.service;

import cn.kgc.pojo.DailyPro;
import com.github.pagehelper.PageInfo;

public interface IDailyProService {

    PageInfo findList(Integer orderid,int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(DailyPro record);

    int insertSelective(DailyPro record);

    DailyPro selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DailyPro record);

    int updateByPrimaryKey(DailyPro record);

}
