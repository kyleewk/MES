package cn.kgc.service;

import cn.kgc.pojo.Bom;
import com.github.pagehelper.PageInfo;




public interface IBomService {
    PageInfo findList(Integer materialid,String materialname, int page, int pageSize);

    int deleteByPrimaryKey(Integer id);

    int insert(Bom record);

    int insertSelective(Bom record);

    Bom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bom record);

    int updateByPrimaryKey(Bom record);
}
