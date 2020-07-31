package cn.kgc.service.impl;

import cn.kgc.mapper.QualityLogMapper;
import cn.kgc.pojo.QualityLog;
import cn.kgc.service.IQualityLogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class QualityLogService implements IQualityLogService {
    
    @Resource
    private QualityLogMapper qualityLogMapper;


    @Override
    public PageInfo findList(Integer orderid, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<QualityLog> list = qualityLogMapper.findList(orderid);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return qualityLogMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(QualityLog record) {
        return qualityLogMapper.insert(record);
    }

    @Override
    public int insertSelective(QualityLog record) {
        return qualityLogMapper.insert(record);
    }

    @Override
    public QualityLog selectByPrimaryKey(Integer id) {
        return qualityLogMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(QualityLog record) {
        return qualityLogMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(QualityLog record) {
        return qualityLogMapper.updateByPrimaryKey(record);
    }
}
