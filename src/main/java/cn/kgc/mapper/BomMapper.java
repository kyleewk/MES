package cn.kgc.mapper;
import cn.kgc.pojo.Bom;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BomMapper {

    List<Bom> findList(@Param("materialid") Integer materialid, @Param("materialname") String materialname);

    int deleteByPrimaryKey(Integer id);

    int insert(Bom record);

    int insertSelective(Bom record);

    Bom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bom record);

    int updateByPrimaryKey(Bom record);
}