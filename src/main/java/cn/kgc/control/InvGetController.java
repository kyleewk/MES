package cn.kgc.control;

import cn.kgc.pojo.InvGet;
import cn.kgc.pojo.InvSave;
import cn.kgc.service.InvGetService;
import cn.kgc.service.InvSaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("InvGet")
public class InvGetController {
    @Resource
    private InvGetService invGetService;
    @Resource
    private InvSaveService invSaveService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "5") int pageSize,
                       String team,
                       String leader) {
        PageHelper.orderBy("id desc");
        PageInfo pageInfo = invGetService.findList(team, leader, page, pageSize);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("team", team);
        model.addAttribute("leader", leader);
        return "inventory/inv_get";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id) {
        InvGet invGet = invGetService.selectByPrimaryKey(id);
        model.addAttribute("invGet", invGet);
        return"inventory/inv_get_modify";
    }

    @RequestMapping("/add")
    public String add(Model model, InvGet invGet, InvSave invSave){
        if (invGet.getResponse().equals("未处理")){
        invGetService.insert(invGet);}
        if (invGet.getResponse().equals("已处理")){
            invGetService.insert(invGet);
            invSaveService.insert(invSave);
        }
        return "redirect:/InvGet/list";
    }
    @RequestMapping("/del")
    public String del(int id){
        invGetService.deleteByPrimaryKey(id);
        return "redirect:/InvGet/list";
    }


    @RequestMapping("/toscan")
    public String toscan(Model model, int id){
        InvGet invGet = invGetService.selectByPrimaryKey(id);
        model.addAttribute("invGet",invGet);
        return "inventory/inv_get_scan";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "inventory/inv_get_add";
    }

    @RequestMapping("/modify")
    public String modify(Model model, InvGet invGet, InvSave invSave) {
        if (invGet.getResponse().equals("未处理")) {
            invGetService.updateByPrimaryKeySelective(invGet);}
            if (invGet.getResponse().equals("已处理")) {
                invGetService.updateByPrimaryKeySelective(invGet);
                invGetService.insert1(invSave);
            }
        return "redirect:/InvGet/list";
        }
}
