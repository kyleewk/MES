package cn.kgc.service;

import cn.kgc.pojo.Provider;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IProviderService {
    PageInfo findList(Integer id,String productname,int page,int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Provider record);

    int insertSelective(Provider record);

    Provider selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Provider record);

    int updateByPrimaryKey(Provider record);
}
