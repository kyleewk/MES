package cn.kgc.mapper;

import cn.kgc.pojo.Team;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeamMapper {
    List<Team> findList(@Param("id") Integer id,@Param("productdepartment") String productdepartment);

    int deleteByPrimaryKey(Integer id);

    int insert(Team record);

    int insertSelective(Team record);

    Team selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Team record);

    int updateByPrimaryKey(Team record);

    //获取班组人数
    int getTeamSum();
}