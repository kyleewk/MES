package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Order;
import cn.kgc.service.impl.BomService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller

@RequestMapping(value = "/bom")
public class BomController {
    @Resource
    private BomService bomService;
    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       Integer materialid,
                       String materialname){
        PageInfo pageInfo = bomService.findList(materialid,materialname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "basics/bom";
    }
    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "basics/bom_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Bom bom){
        bomService.insert(bom);
        return "redirect:/bom/list";
    }
}
