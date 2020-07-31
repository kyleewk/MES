package cn.kgc.service.impl;

import cn.kgc.mapper.ResourceMapper;
import cn.kgc.service.ResourceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ResourceService")
public class ResourceServiceimpl implements ResourceService {
    @Resource
    private ResourceMapper resourceMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return resourceMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(cn.kgc.pojo.Resource record) {
        int cnt = resourceMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(cn.kgc.pojo.Resource record) {
        return resourceMapper.insertSelective(record);
    }

    @Override
    public cn.kgc.pojo.Resource selectByPrimaryKey(Integer id) {
        return resourceMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(cn.kgc.pojo.Resource record) {
        return resourceMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(cn.kgc.pojo.Resource record) {
        return resourceMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo findList(Integer id, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        List<cn.kgc.pojo.Resource> List = resourceMapper.findList(id);
        PageInfo pageInfo = new PageInfo(List);
        return pageInfo;
    }

    @Override
    public int[] getStore() {
        int[] store = resourceMapper.getStore();
        System.out.println(store);
        return store;
    }

    @Override
    public int[] getRemains() {
        int[] store = resourceMapper.getStore();
        int[] remains = new int[12];
        for (int i = 0; i < store.length-1; i++) {
            remains[i] = 10000 - store[i];
        }
        return remains;
    }

    @Override
    public double upStore() {
        double up = resourceMapper.getLast();
        double store = up / 10000;
        double res = Math.round(store*100);
        return res;
    }

}
