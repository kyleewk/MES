package cn.kgc.mapper;

import cn.kgc.pojo.ShowList;

public interface ShowListMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShowList record);

    int insertSelective(ShowList record);

    ShowList selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShowList record);

    int updateByPrimaryKey(ShowList record);
}