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
@RequestMapping("/InvSave")
public class InvSaveController {
    @Resource
    private InvSaveService invSaveService;
    @Resource
    private  InvGetService invGetService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer id,
                       String team){
        PageHelper.orderBy("id desc");
        PageInfo pageInfo = invSaveService.findList(id,team,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("id", id);
        model.addAttribute("team", team);
        return "inventory/inv_save";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id){
        InvSave invSave = invSaveService.selectByPrimaryKey(id);
        model.addAttribute("invSave", invSave);
        return "inventory/inv_save_modify";
    }

    @RequestMapping("/del")
    public String del(int id){
        invSaveService.deleteByPrimaryKey(id);
        return "redirect:/InvSave/list";
    }

    @RequestMapping("/toscan")
    public String toscan(Model model, int id){
        InvSave invSave = invSaveService.selectByPrimaryKey(id);
        model.addAttribute("invSave",invSave);
        return "inventory/inv_save_scan";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "inventory/inv_save_add";
    }

    @RequestMapping("/modify")
    public String modify(Model model, InvSave invSave) {

        invSaveService.updateByPrimaryKeySelective(invSave);

        return "redirect:/InvSave/list";
    }
}
