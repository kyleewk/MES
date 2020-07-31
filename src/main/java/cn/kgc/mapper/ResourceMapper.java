package cn.kgc.mapper;

import cn.kgc.pojo.Resource;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ResourceMapper {

    List<Resource> findList(@Param("id") Integer id);

    //获取每个月的库存量
    int[] getStore();

    //获取最后更新的库存信息
    int getLast();

    int deleteByPrimaryKey(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);
}