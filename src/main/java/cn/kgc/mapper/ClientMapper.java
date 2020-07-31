package cn.kgc.mapper;
import cn.kgc.pojo.Client;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClientMapper {
    List<Client> findList(@Param("customername") String customername, @Param("productname") String productname);

    int deleteByPrimaryKey(Integer id);

    int insert(Client record);

    int insertSelective(Client record);

    Client selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Client record);

    int updateByPrimaryKey(Client record);
}