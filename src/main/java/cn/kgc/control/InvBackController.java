package cn.kgc.control;

import cn.kgc.pojo.InvBack;
import cn.kgc.service.InvBackService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;


@Controller
@RequestMapping("InvBack")
public class InvBackController {
    @Resource
    private InvBackService invBackService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "5") int pageSize,
                       @RequestParam(defaultValue = "0") Integer id,
                       String team) {
        PageHelper.orderBy("id desc");
        PageInfo pageInfo = invBackService.findList(id, team, page, pageSize);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("id", id);
        model.addAttribute("team", team);
        return "inventory/inv_back";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id) {
        InvBack invBack = invBackService.selectByPrimaryKey(id);
        model.addAttribute("invBack", invBack);
        return "inventory/inv_back_modify";
    }

    @RequestMapping("/add")
    public String add(Model model, InvBack invBack) {
        invBackService.insert(invBack);
        return "redirect:/InvBack/list";
    }

    @RequestMapping("/del")
    public String del(int id) {
        invBackService.deleteByPrimaryKey(id);
        return "redirect:/InvBack/list";
    }


    @RequestMapping("/toscan")
    public String toscan(Model model, int id) {
        InvBack invBack = invBackService.selectByPrimaryKey(id);
        model.addAttribute("invBack", invBack);
        return "inventory/inv_back_scan";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model) {
        return "inventory/inv_back_add";
    }

    @RequestMapping("/modify")
    public String modify(Model model, InvBack invBack) {

        invBackService.updateByPrimaryKeySelective(invBack);

        return "redirect:/InvBack/list";
    }
}
