package cn.kgc.mapper;

import cn.kgc.pojo.ProductLine;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductLineMapper {

    List<ProductLine> findList(@Param("id") Integer id,@Param("productdeparment") String productdeparment);

    int deleteByPrimaryKey(Integer id);

    int insert(ProductLine record);

    int insertSelective(ProductLine record);

    ProductLine selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductLine record);

    int updateByPrimaryKey(ProductLine record);
}