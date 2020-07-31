package cn.kgc.service;

import cn.kgc.pojo.Client;
import com.github.pagehelper.PageInfo;


public interface IClientService {
    PageInfo findList(String customername,String productname, int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Client record);

    int insertSelective(Client record);

    Client selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Client record);

    int updateByPrimaryKey(Client record);
}
