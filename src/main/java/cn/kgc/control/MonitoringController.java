package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Monitoring;
import cn.kgc.service.impl.MonitoringService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/monitoring")
public class MonitoringController {
    @Resource
    private MonitoringService monitoringService;
    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       Integer id, String devicename){
        PageInfo pageInfo = monitoringService.findList(id,devicename,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "equipment/monitoring";
    }
    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "equipment/monitoring_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Monitoring monitoring){
        monitoringService.insert(monitoring);
        return "redirect:/monitoring/list";
    }
}
