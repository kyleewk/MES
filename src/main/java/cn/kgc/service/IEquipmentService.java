package cn.kgc.service;

import cn.kgc.pojo.Equipment;
import com.github.pagehelper.PageInfo;


import java.util.List;

public interface IEquipmentService {
    PageInfo findList(String devicename, String unittype,int page, int pageSize);
    int deleteByPrimaryKey(Integer id);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);
}
