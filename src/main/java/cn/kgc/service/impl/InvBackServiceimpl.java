package cn.kgc.service.impl;

import cn.kgc.mapper.InvBackMapper;
import cn.kgc.pojo.InvBack;
import cn.kgc.service.InvBackService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InvBackServiceimpl implements InvBackService {
    @Resource
    private InvBackMapper invBackMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return invBackMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(InvBack record) {
        int cnt = invBackMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(InvBack record) {
        return invBackMapper.insertSelective(record);
    }

    @Override
    public InvBack selectByPrimaryKey(Integer id) {
        return invBackMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(InvBack record) {
        return invBackMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(InvBack record) {
        return invBackMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(Integer id, String team, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<InvBack> list = invBackMapper.findList(id, team);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }
}
