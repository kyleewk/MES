package cn.kgc.service.impl;

import cn.kgc.mapper.ProviderMapper;
import cn.kgc.pojo.Provider;
import cn.kgc.service.IProviderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProviderService implements IProviderService {

    @Resource
    private ProviderMapper providerMapper;
    @Override
    public PageInfo findList(Integer id, String productname, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Provider> list = providerMapper.findList(id,productname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Provider record) {
        int cnt = providerMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Provider record) {
        return 0;
    }

    @Override
    public cn.kgc.pojo.Provider selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Provider record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Provider record) {
        return 0;
    }
}
