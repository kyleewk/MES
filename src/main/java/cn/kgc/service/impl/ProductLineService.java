package cn.kgc.service.impl;

import cn.kgc.mapper.ProductLineMapper;
import cn.kgc.pojo.ProductLine;
import cn.kgc.service.IProductLineService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductLineService implements IProductLineService {
    @Resource
    private ProductLineMapper productLineMapper;
    @Override
    public PageInfo findList(Integer id, String productdeparment, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<ProductLine> list = productLineMapper.findList(id, productdeparment);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(ProductLine record) {
        int cnt = productLineMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(ProductLine record) {
        return 0;
    }

    @Override
    public ProductLine selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(ProductLine record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(ProductLine record) {
        return 0;
    }
}
