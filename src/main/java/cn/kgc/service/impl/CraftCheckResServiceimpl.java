package cn.kgc.service.impl;

import cn.kgc.mapper.CraftCheckResMapper;
import cn.kgc.pojo.CraftCheckRes;
import cn.kgc.service.CraftCheckResService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CraftCheckResServiceimpl implements CraftCheckResService {
    @Resource
    CraftCheckResMapper craftCheckResMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return craftCheckResMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(CraftCheckRes record) {
        int cnt = craftCheckResMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(CraftCheckRes record) {
        return craftCheckResMapper.insertSelective(record);
    }

    @Override
    public CraftCheckRes selectByPrimaryKey(Integer id) {
        return craftCheckResMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(CraftCheckRes record) {
        return craftCheckResMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(CraftCheckRes record) {
        return craftCheckResMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(Integer checkid, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<CraftCheckRes> list = craftCheckResMapper.findList(checkid);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }
}
