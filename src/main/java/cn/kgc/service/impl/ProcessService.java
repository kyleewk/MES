package cn.kgc.service.impl;

import cn.kgc.mapper.ProcessMapper;
import cn.kgc.pojo.Process;
import cn.kgc.service.IProcessService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProcessService implements IProcessService {

    @Resource
    private ProcessMapper processMapper;

    @Override
    public PageInfo findList(Integer orderid, Integer status,int page,int pageSize) {
        List<Process> list = processMapper.findList(orderid,status);
        PageHelper.startPage(page,pageSize);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return processMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Process record) {
        return processMapper.insert(record);
    }

    @Override
    public int insertSelective(Process record) {
        return processMapper.insert(record);
    }

    @Override
    public Process selectByPrimaryKey(Integer id) {
        return processMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Process record) {
        return processMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Process record) {
        return processMapper.updateByPrimaryKey(record);
    }

    @Override
    public double[] getYield() {
        double[] yield = new double[5];
        List<Process> processList = processMapper.getYield();
        for (int i = 0; i < processList.size(); i++) {
            double ng =  processList.get(i).getNgnum();
            double real =  processList.get(i).getRealnum();
            yield[i] = Math.round((1-ng / real)*100);
        }
        return yield;
    }

    @Override
    public int sum() {
        return processMapper.sum();
    }

    @Override
    public List<double[]> getPro3() {
        List<double[]> list = new ArrayList<double[]>();
        List<Process> processList = processMapper.getPro3();
        double[] data = new double[5];
        double[] other = new double[5];
        for (int i = 0; i < processList.size(); i++) {
            double real = processList.get(i).getRealnum();
            double target = processList.get(i).getOrder().getTargetnum();
            double j = real / target * 100;
            data[i] = Math.round(j);
            other[i] = 100 - data[i];
        }
        list.add(data);
        list.add(other);
        return list;
    }

    @Override
    public int getPending() {
        return processMapper.getPending();
    }

    @Override
    public int insertPro(Integer orderid) {
        return processMapper.insertPro(orderid);
    }

    @Override
    public List<Process> forIndexProcess() {
        return processMapper.forIndexProcess();
    }
}
