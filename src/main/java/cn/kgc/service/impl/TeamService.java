package cn.kgc.service.impl;


import cn.kgc.mapper.TeamMapper;
import cn.kgc.pojo.Team;
import cn.kgc.service.ITeamService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TeamService implements ITeamService {
    @Resource
    private TeamMapper teamMapper;
    @Override
    public PageInfo findList(Integer id, String productdepartment, int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Team> list = teamMapper.findList(id,productdepartment);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Team record) {
        int cnt = teamMapper.insert(record);
        return cnt;
    }

    @Override
    public int insertSelective(Team record) {
        return 0;
    }

    @Override
    public Team selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Team record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Team record) {
        return 0;
    }

    @Override
    public int getTeamSum() {
        return teamMapper.getTeamSum();
    }
}
