package cn.kgc.control;


import cn.kgc.pojo.Repair;
import cn.kgc.service.impl.RepairService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/repair")
public class RepairController {

    @Resource
    private RepairService repairService;


    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       Integer orderid,
                       String applicantname){
        PageInfo pageInfo = repairService.findList(orderid,applicantname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("orderid",orderid);
        model.addAttribute("applicantname",applicantname);
        return "produce/pro_repair";
    }

    @RequestMapping("/del")
    public String del(int id){
        repairService.deleteByPrimaryKey(id);
        return "redirect:/produce/list";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id){
        Repair repair = repairService.selectByPrimaryKey(id);
        model.addAttribute("repair", repair);
        return "produce/pro_repair_up";
    }

    @RequestMapping("/get")
    public String get(Repair repair){
        repairService.updateByPrimaryKeySelective(repair);
        return "redirect:/produce/list";
    }

    @RequestMapping("/add")
    public String add(Repair repair){
        repairService.insertSelective(repair);
        return "redirect:/produce/list";
    }



}
