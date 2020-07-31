package cn.kgc.service;

import cn.kgc.pojo.Department;
import com.github.pagehelper.PageInfo;

public interface IDepartmentService {
    PageInfo findList(String department,String manger,int page, int pageSize);
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);
}
