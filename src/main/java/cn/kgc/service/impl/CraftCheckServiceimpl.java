package cn.kgc.service.impl;

import cn.kgc.mapper.CraftCheckMapper;
import cn.kgc.pojo.CraftCheck;
import cn.kgc.service.CraftCheckService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CraftCheckServiceimpl implements CraftCheckService {
    @Resource
    private CraftCheckMapper craftCheckMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return craftCheckMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(CraftCheck record) {
        int cnt = craftCheckMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(CraftCheck record) {
        return craftCheckMapper.insertSelective(record);
    }

    @Override
    public CraftCheck selectByPrimaryKey(Integer id) {
        return craftCheckMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(CraftCheck record) {
        return craftCheckMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(CraftCheck record) {
        return craftCheckMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(String machinetype, String applicantname, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<CraftCheck> list = craftCheckMapper.findList(machinetype, applicantname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }


}
