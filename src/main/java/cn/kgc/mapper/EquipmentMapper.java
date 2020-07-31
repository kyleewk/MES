package cn.kgc.mapper;

import cn.kgc.pojo.Equipment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EquipmentMapper {
    List<Equipment> findList(@Param("devicename") String devicename,@Param("unittype") String unittype );
    int deleteByPrimaryKey(Integer id);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);
}