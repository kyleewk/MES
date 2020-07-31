package cn.kgc.service;

import cn.kgc.pojo.Product;
import com.github.pagehelper.PageInfo;


public interface IProductService {
    PageInfo findList(String producttype,String productname,int page,int pageSize);
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}
