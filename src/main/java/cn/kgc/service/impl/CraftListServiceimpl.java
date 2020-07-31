package cn.kgc.service.impl;

import cn.kgc.mapper.CraftListMapper;
import cn.kgc.pojo.CraftList;
import cn.kgc.service.CraftListService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CraftListServiceimpl implements CraftListService {
    @Resource
    private CraftListMapper craftListMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return craftListMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(CraftList record) {
        int cnt = craftListMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(CraftList record) {
        return craftListMapper.insertSelective(record);
    }

    @Override
    public CraftList selectByPrimaryKey(Integer id) {
        return craftListMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(CraftList record) {
        return craftListMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(CraftList record) {
        return craftListMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(String machineType, String craftName, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<CraftList> list = craftListMapper.findList(machineType, craftName);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public CraftList selectByMachineType(String machinetype) {
        return craftListMapper.selectByMachineType(machinetype);
    }
}
