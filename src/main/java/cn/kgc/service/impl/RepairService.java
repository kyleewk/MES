package cn.kgc.service.impl;

import cn.kgc.mapper.RepairMapper;
import cn.kgc.pojo.Repair;
import cn.kgc.service.IRepairService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RepairService implements IRepairService {

    @Resource
    private RepairMapper repairMapper;

    @Override
    public PageInfo findList(Integer orderid, String applicantname, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Repair> list = repairMapper.findList(orderid,applicantname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return repairMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Repair record) {
        return repairMapper.insert(record);
    }

    @Override
    public int insertSelective(Repair record) {
        return repairMapper.insert(record);
    }

    @Override
    public Repair selectByPrimaryKey(Integer id) {
        return repairMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Repair record) {
        return repairMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Repair record) {
        return repairMapper.updateByPrimaryKey(record);
    }
}
