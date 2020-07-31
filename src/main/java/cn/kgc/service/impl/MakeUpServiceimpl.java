package cn.kgc.service.impl;

import cn.kgc.mapper.MakeUpMapper;
import cn.kgc.pojo.MakeUp;
import cn.kgc.service.MakeUpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MakeUpServiceimpl implements MakeUpService {
    @Resource
    MakeUpMapper makeUpMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return makeUpMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(MakeUp record) {
        int cnt = makeUpMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(MakeUp record) {
        return makeUpMapper.insertSelective(record);
    }

    @Override
    public MakeUp selectByPrimaryKey(Integer id) {
        return makeUpMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(MakeUp record) {
        return makeUpMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MakeUp record) {
        return makeUpMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(Integer id, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<MakeUp> List = makeUpMapper.findList(id);
        PageInfo pageInfo = new PageInfo(List);
        return pageInfo;
    }
}
