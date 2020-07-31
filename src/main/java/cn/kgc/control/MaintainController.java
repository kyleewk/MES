package cn.kgc.control;

import cn.kgc.pojo.Maintain;
import cn.kgc.pojo.Monitoring;
import cn.kgc.service.impl.MaintainService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/maintain")
public class MaintainController {
    @Resource
    private MaintainService maintainService;
    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       String devicename,
                       String specification){
        PageInfo pageInfo = maintainService.findList(devicename,specification,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "equipment/maintain";
    }
    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "equipment/maintain_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Maintain maintain){
        maintainService.insert(maintain);
        return "redirect:/maintain/list";
    }
}
