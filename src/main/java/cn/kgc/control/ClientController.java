package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Client;
import cn.kgc.service.impl.ClientService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/client")
public class ClientController {
    @Resource
    private ClientService clientService;
    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       String customername,
                       String productname){
        PageInfo pageInfo = clientService.findList(customername,productname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "organization/client";
    }
    @RequestMapping(value = "/toadd")
    public String toadd(Model model){
        return "organization/client_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Client client){
        clientService.insert(client);
        return "redirect:/client/list";
    }
}
