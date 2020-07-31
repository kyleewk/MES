package cn.kgc.service;

import cn.kgc.pojo.ProductLine;
import com.github.pagehelper.PageInfo;



public interface IProductLineService {
    PageInfo findList(Integer id,String productdeparment,int page,int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(ProductLine record);

    int insertSelective(ProductLine record);

    ProductLine selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductLine record);

    int updateByPrimaryKey(ProductLine record);
}
