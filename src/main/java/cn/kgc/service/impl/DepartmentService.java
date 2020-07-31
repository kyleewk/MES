package cn.kgc.service.impl;

import cn.kgc.mapper.DepartmentMapper;
import cn.kgc.pojo.Department;
import cn.kgc.service.IDepartmentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentService implements IDepartmentService {
    @Resource
    private DepartmentMapper departmentMapper;
    @Override
    public PageInfo findList(String department, String manger, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Department> list = departmentMapper.findList(department,manger);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Department record) {
        return 0;
    }

    @Override
    public int insertSelective(Department record) {
        return 0;
    }

    @Override
    public Department selectByPrimaryKey(Integer id) {
        return departmentMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Department record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Department record) {
        return 0;
    }
}
