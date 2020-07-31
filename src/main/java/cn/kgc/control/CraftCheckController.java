package cn.kgc.control;

import cn.kgc.pojo.CraftCheck;
import cn.kgc.service.CraftCheckService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("CraftCheck")
public class CraftCheckController {
    @Resource
    private CraftCheckService craftCheckService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") String machinetype,
                       String applicantname){
        PageInfo pageInfo = craftCheckService.findList(machinetype,applicantname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "craft/check_list";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id,String opr){
        CraftCheck craftCheck = craftCheckService.selectByPrimaryKey(id);
        model.addAttribute("craftCheck", craftCheck);
        model.addAttribute("opr", opr);
        return "craft/craft_upload";
    }

    @RequestMapping("/add")
    public String add(Model model, CraftCheck craftCheck,String opr){
        if(opr == null){
            craftCheckService.insert(craftCheck);
        }
        else
        {
            craftCheckService.updateByPrimaryKeySelective(craftCheck);
        }
        return "redirect:/craft/list";
    }

    @RequestMapping("/del")
    public String del(int id){
        craftCheckService.deleteByPrimaryKey(id);
        return "redirect:/craft/list";
    }


    @RequestMapping("/toscan")
    public String toscan(Model model, int id){
        CraftCheck craftCheck = craftCheckService.selectByPrimaryKey(id);
        model.addAttribute("craftCheck",craftCheck);
        return "craft/check_sop_scan";
    }
}
