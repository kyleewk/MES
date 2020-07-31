package cn.kgc.mapper;

import cn.kgc.pojo.Monitoring;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MonitoringMapper {
    List<Monitoring> findList(@Param("id")Integer id,@Param("devicename") String devicename);
    int deleteByPrimaryKey(Integer id);

    int insert(Monitoring record);

    int insertSelective(Monitoring record);

    Monitoring selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Monitoring record);

    int updateByPrimaryKey(Monitoring record);
}