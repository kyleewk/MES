package cn.kgc.service.impl;

import cn.kgc.mapper.InvGetMapper;
import cn.kgc.mapper.InvSaveMapper;
import cn.kgc.pojo.InvGet;
import cn.kgc.pojo.InvSave;
import cn.kgc.service.InvGetService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InvGetServiceimpl implements InvGetService {
    @Resource
    private InvGetMapper invGetMapper;
    @Resource
    private InvSaveMapper invSaveMapper;


    @Override
    public int deleteByPrimaryKey(Integer id) {
        return invGetMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(InvGet record) {
        int cnt = invGetMapper.insert(record);
                return cnt;
    }

    @Override
    public int insert1(InvSave record) {
        int cnt = invGetMapper.insert1(record);
        return cnt;
    }

    @Override
    public int insertSelective(InvGet record) {
        return invGetMapper.insertSelective(record);
    }

    @Override
    public InvGet selectByPrimaryKey(Integer id) {
        return invGetMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(InvGet record) {
        return invGetMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(InvGet record) {
        return invGetMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(String team, String leader, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<InvGet> list = invGetMapper.findList(team, leader);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }
}
