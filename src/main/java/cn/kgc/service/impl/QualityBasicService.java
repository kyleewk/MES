package cn.kgc.service.impl;

import cn.kgc.mapper.QualityBasicMapper;
import cn.kgc.pojo.QualityBasic;
import cn.kgc.pojo.Repair;
import cn.kgc.service.IQualityBasicService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class QualityBasicService implements IQualityBasicService {

    @Resource
    private QualityBasicMapper qualityBasicMapper;

    @Override
    public PageInfo findList(String type, String project, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<QualityBasic> list = qualityBasicMapper.findList(type,project);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return qualityBasicMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(QualityBasic record) {
        return qualityBasicMapper.insert(record);
    }

    @Override
    public int insertSelective(QualityBasic record) {
        return qualityBasicMapper.insert(record);
    }

    @Override
    public QualityBasic selectByPrimaryKey(Integer id) {
        return qualityBasicMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(QualityBasic record) {
        return qualityBasicMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(QualityBasic record) {
        return qualityBasicMapper.updateByPrimaryKey(record);
    }
}
