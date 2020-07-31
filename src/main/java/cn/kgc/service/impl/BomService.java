package cn.kgc.service.impl;

import cn.kgc.mapper.BomMapper;
import cn.kgc.pojo.Bom;
import cn.kgc.service.IBomService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class BomService implements IBomService {
    @Resource
    private BomMapper bomMapper;


    @Override
    public PageInfo findList(Integer materialid, String materialname, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Bom> list = bomMapper.findList(materialid,materialname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Bom record) {
        int cnt = bomMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Bom record) {
        return 0;
    }

    @Override
    public Bom selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Bom record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Bom record) {
        return 0;
    }
}
