package cn.kgc.mapper;

import cn.kgc.pojo.Employee;
import cn.kgc.pojo.Perm;
import cn.kgc.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeMapper {
    List<Employee> findList(@Param("sn") String sn,@Param("name") String name);

    int deleteByPrimaryKey(String sn);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(String sn);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);

    Employee getNext(@Param("status") Integer status);

    //根据用户名获取用户
    Employee findByEmpName(@Param("name") String name);

    //根据用户名获取所有角色
    Employee findRoleByEmpName(@Param("name") String name);

    //根据用户名获取所有部门
    Employee findDeptByEmpName(@Param("name") String name);

    //根据用户sn获取所有部门
    Employee findEmpBySn(@Param("sn") String sn);

    //根据角色获取权限信息
    List<Perm> findPermByRoleId(@Param("id") Integer id);

    //根据角色获取权限信息
    List<Perm> findPermByDeptId(@Param("id") Integer id);

    //用户注册
    int register(Employee employee);
}