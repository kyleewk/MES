package cn.kgc.service;

import cn.kgc.pojo.Trace;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ITraceService {

    PageInfo findList(@Param("productLine") Integer productLine, @Param("orderId") Integer orderId, int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Trace record);

    int insertSelective(Trace record);

    Trace selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Trace record);

    int updateByPrimaryKey(Trace record);
}
