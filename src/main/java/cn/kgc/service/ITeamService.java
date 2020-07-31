package cn.kgc.service;

import cn.kgc.pojo.Team;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ITeamService {
    PageInfo findList(Integer id,String productdepartment,int page,int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Team record);

    int insertSelective(Team record);

    Team selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Team record);

    int updateByPrimaryKey(Team record);

    //获取班组人数
    int getTeamSum();
}
