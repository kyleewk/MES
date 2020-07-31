package cn.kgc.control;

import cn.kgc.service.ResourceService;
import cn.kgc.service.impl.OrderService;
import cn.kgc.service.impl.ProcessService;
import cn.kgc.service.impl.TeamService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/chart")
public class ChartController {

    @Resource
    private ResourceService resourceService;

    @Resource
    private OrderService orderService;

    @Resource
    private ProcessService processService;

    @Resource
    private TeamService teamService;

    @RequestMapping("/store")
    public String store(){
        return "/charts/charts_store";
    }

    @RequestMapping("/produce")
    public String produce(){
        return "/charts/charts_produce";
    }

    @RequestMapping("/quality")
    public String quality(){
        return "/charts/qua_charts";
    }

    //获取库存图表所需数据
    @RequestMapping("/getStore")
    @ResponseBody
    public List<Object> getStore(){
        int[] remains = resourceService.getRemains();
        int[] store = resourceService.getStore();
        List<Object> list = new ArrayList<Object>();
        list.add(store);
        list.add(remains);
        return list;
    }

    //获取产能图表所需数据
    @RequestMapping("/getPro11")
    @ResponseBody
    public List<int[]> getPro11(){
        return orderService.getPro11();
    }

    //获取生产进度图表所需数据
    @RequestMapping("/getPro3")
    @ResponseBody
    public List<double[]> getPro3(){
        return processService.getPro3();
    }

    //获取良率
    @RequestMapping("/getYield")
    @ResponseBody
    public double[] getYield(){
        return processService.getYield();
    }


    //更新库存信息
    @RequestMapping("/upStore")
    @ResponseBody
    public double upStore(){
        return resourceService.upStore();
    }

    //更新月产量信息
    @RequestMapping("/upSum")
    @ResponseBody
    public int upSum(){
        return processService.sum();
    }

    //更新暂停工单数量
    @RequestMapping("/upPending")
    @ResponseBody
    public int upPending(){
        return processService.getPending();
    }

    //更新班组人数
    @RequestMapping("/upTeamSum")
    @ResponseBody
    public int upTeamSum(){
        return teamService.getTeamSum();
    }

}
