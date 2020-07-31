package cn.kgc.mapper;

import cn.kgc.pojo.Maintain;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MaintainMapper {
    List<Maintain> findList(@Param("devicename") String devicename,@Param("specification") String specification);

    int deleteByPrimaryKey(Integer id);

    int insert(Maintain record);

    int insertSelective(Maintain record);

    Maintain selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Maintain record);

    int updateByPrimaryKey(Maintain record);
}