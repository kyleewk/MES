package cn.kgc.mapper;

import cn.kgc.pojo.Provider;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProviderMapper {

    List<Provider> findList(@Param("id") Integer id,@Param("productname") String productname);

    int deleteByPrimaryKey(Integer id);

    int insert(Provider record);

    int insertSelective(Provider record);

    Provider selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Provider record);

    int updateByPrimaryKey(Provider record);
}