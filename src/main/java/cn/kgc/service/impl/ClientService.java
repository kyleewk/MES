package cn.kgc.service.impl;

import cn.kgc.mapper.ClientMapper;
import cn.kgc.pojo.Client;
import cn.kgc.service.IClientService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClientService implements IClientService {
    @Resource
    private ClientMapper clientMapper;

    @Override
    public PageInfo findList(String customername, String productname, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Client> list = clientMapper.findList(customername,productname);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Client record) {
        int cnt = clientMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Client record) {
        return 0;
    }

    @Override
    public Client selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Client record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Client record) {
        return 0;
    }
}
