package cn.kgc.mapper;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Department;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DepartmentMapper {
    List<Department> findList(@Param("department") String department, @Param("manger") String manger);
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);
}