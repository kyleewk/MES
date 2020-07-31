package cn.kgc.control;


import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Provider;
import cn.kgc.service.impl.ProviderService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/provider")
public class ProviderController {
    @Resource
    private ProviderService providerService;

    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       Integer id, String productname){
        PageInfo pageInfo = providerService.findList(id,productname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "organization/provider";
    }
    @RequestMapping(value = "/toadd")
    public String toadd(Model model){
        return "organization/provider_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Provider provider){
        providerService.insert(provider);
        return "redirect:/provider/list";
    }
}
