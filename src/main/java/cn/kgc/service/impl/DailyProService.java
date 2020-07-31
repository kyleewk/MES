package cn.kgc.service.impl;

import cn.kgc.mapper.DailyProMapper;
import cn.kgc.pojo.DailyPro;
import cn.kgc.service.IDailyProService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DailyProService implements IDailyProService {

    @Resource
    private DailyProMapper dailyProMapper;

    @Override
    public PageInfo findList(Integer orderid,int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<DailyPro> list = dailyProMapper.findList(orderid);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return dailyProMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(DailyPro record) {
        return dailyProMapper.insert(record);
    }

    @Override
    public int insertSelective(DailyPro record) {
        return dailyProMapper.insert(record);
    }

    @Override
    public DailyPro selectByPrimaryKey(Integer id) {
        return dailyProMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(DailyPro record) {
        return dailyProMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(DailyPro record) {
        return dailyProMapper.updateByPrimaryKey(record);
    }
}
