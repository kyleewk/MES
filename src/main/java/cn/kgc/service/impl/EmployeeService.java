package cn.kgc.service.impl;

import cn.kgc.mapper.EmployeeMapper;
import cn.kgc.pojo.Employee;
import cn.kgc.pojo.Perm;
import cn.kgc.pojo.Role;
import cn.kgc.service.IEmployeeService;
import cn.kgc.util.SaltUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class EmployeeService implements IEmployeeService {

    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public PageInfo findList(String sn, String name, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Employee> list = employeeMapper.findList(sn, name);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(String sn) {
        return 0;
    }

    @Override
    public int insert(Employee record) {
        int cnt = employeeMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Employee record) {
        return 0;
    }

    @Override
    public Employee selectByPrimaryKey(String sn) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Employee record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Employee record) {
        return 0;
    }

    @Override
    public Employee getNext(Integer status) {
        return employeeMapper.getNext(status);
    }

    @Override
    public Employee findByEmpName(String name) {
        return employeeMapper.findByEmpName(name);
    }

    @Override
    public Employee findRoleByEmpName(String name) {
        return employeeMapper.findRoleByEmpName(name);
    }

    @Override
    public List<Perm> findPermByRoleId(Integer id) {
        return employeeMapper.findPermByRoleId(id);
    }

    @Override
    public int register(Employee employee) {
//处理业务调用dao
        //1.生成随机盐
        String salt= SaltUtils.getSalt(8);
        //2.将随机盐保存到数据库
        employee.setSalt(salt);
        //3.明文密码镜像md5+salt+hash散列
        Md5Hash md5Hash=new Md5Hash(employee.getPassword(),salt,1024);
        employee.setPassword(md5Hash.toHex());
        return employeeMapper.register(employee);
    }

    @Override
    public List<Perm> findPermByDeptId(Integer id) {
        return employeeMapper.findPermByDeptId(id);
    }

    @Override
    public Employee findDeptByEmpName(String name) {
        return employeeMapper.findDeptByEmpName(name);
    }

    @Override
    public Employee findEmpBySn(String sn) {
        return employeeMapper.findEmpBySn(sn);
    }
}
