package cn.kgc.service.impl;

import cn.kgc.mapper.ProductMapper;
import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Product;
import cn.kgc.service.IProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductService implements IProductService {
    @Resource
    private ProductMapper productMapper;

    @Override
    public PageInfo findList(String producttype, String productname, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Product> list = productMapper.findList(producttype,productname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;

    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Product record) {
        int cnt = productMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Product record) {
        return 0;
    }

    @Override
    public Product selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Product record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Product record) {
        return 0;
    }
}
