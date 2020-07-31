package cn.kgc.service.impl;

import cn.kgc.mapper.TraceMapper;
import cn.kgc.pojo.Trace;
import cn.kgc.service.ITraceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TraceService implements ITraceService {

    @Resource
    private TraceMapper traceMapper;

    @Override
    public PageInfo findList(Integer productLine, Integer orderId, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Trace> list = traceMapper.findList(productLine,orderId);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return traceMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Trace record) {
        return traceMapper.insert(record);
    }

    @Override
    public int insertSelective(Trace record) {
        return traceMapper.insertSelective(record);
    }

    @Override
    public Trace selectByPrimaryKey(Integer id) {
        return traceMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Trace record) {
        return traceMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Trace record) {
        return traceMapper.updateByPrimaryKey(record);
    }
}
