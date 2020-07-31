package cn.kgc.service.impl;

import cn.kgc.mapper.InvSaveMapper;
import cn.kgc.pojo.InvSave;
import cn.kgc.service.InvSaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InvSaveServiceimpl implements InvSaveService {
    @Resource
    private InvSaveMapper invSaveMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return invSaveMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(InvSave record) {
        int cnt = invSaveMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(InvSave record) {
        return invSaveMapper.insertSelective(record);
    }

    @Override
    public InvSave selectByPrimaryKey(Integer id) {
        return invSaveMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(InvSave record) {
        return invSaveMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(InvSave record) {
        return invSaveMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(Integer id, String team, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<InvSave> List = invSaveMapper.findList(id, team);
        PageInfo pageInfo = new PageInfo(List);
        return pageInfo;
    }
}
