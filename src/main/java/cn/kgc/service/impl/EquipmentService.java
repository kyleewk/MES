package cn.kgc.service.impl;

import cn.kgc.mapper.EquipmentMapper;
import cn.kgc.pojo.Equipment;
import cn.kgc.service.IEquipmentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service
public class EquipmentService implements IEquipmentService {
    @Resource
    private EquipmentMapper equipmentMapper;
    @Override
    public PageInfo findList(String devicename, String unittype, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Equipment> list = equipmentMapper.findList(devicename,unittype);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Equipment record) {
        int cnt = equipmentMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Equipment record) {
        return 0;
    }

    @Override
    public Equipment selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Equipment record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Equipment record) {
        return 0;
    }
}
