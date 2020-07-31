package cn.kgc.service.impl;

import cn.kgc.mapper.MonitoringMapper;
import cn.kgc.pojo.Monitoring;
import cn.kgc.service.IMonitoringService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MonitoringService implements IMonitoringService {
    @Resource
    private MonitoringMapper monitoringMapper;
    @Override
    public PageInfo findList(Integer id, String devicename, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Monitoring> list = monitoringMapper.findList(id,devicename);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Monitoring record) {
        int cnt = monitoringMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Monitoring record) {
        return 0;
    }

    @Override
    public Monitoring selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Monitoring record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Monitoring record) {
        return 0;
    }
}
