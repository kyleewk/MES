package cn.kgc.service.impl;

import cn.kgc.mapper.MaintainMapper;
import cn.kgc.pojo.Maintain;
import cn.kgc.service.IMaintainService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MaintainService implements IMaintainService {
   @Resource
    private MaintainMapper maintainMapper;
    @Override
    public PageInfo findList(String devicename, String specification, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Maintain> list = maintainMapper.findList(devicename,specification);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Maintain record) {
        int cnt = maintainMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Maintain record) {
        return 0;
    }

    @Override
    public Maintain selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Maintain record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Maintain record) {
        return 0;
    }
}
