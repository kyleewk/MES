package cn.kgc.control;

import cn.kgc.pojo.CraftCheckRes;
import cn.kgc.service.CraftCheckResService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;


@Controller
@RequestMapping("/CraftCheckRes")
public class CraftCheckResController {
    @Resource
    private CraftCheckResService craftCheckResService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer checkid){
        PageInfo pageInfo = craftCheckResService.findList(checkid, page, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "inventory/inv_back";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id,String opr){
        CraftCheckRes craftCheckRes = craftCheckResService.selectByPrimaryKey(id);
        model.addAttribute("craftCheckRes", craftCheckRes);
        model.addAttribute("opr", opr);
        return "inventory/inv_back_modify";
    }

    @RequestMapping("/add")
    public String add(Model model, CraftCheckRes craftCheckRes,String opr){
        if(opr == null){
            craftCheckResService.insert(craftCheckRes);
        }
        else
        {
            craftCheckResService.updateByPrimaryKeySelective(craftCheckRes);
        }
        return "redirect:/inv_back/list";
    }

    @RequestMapping("/del")
    public String del(int id){
        craftCheckResService.deleteByPrimaryKey(id);
        return "redirect:/inv_back/list";
    }


    @RequestMapping("/toscan")
    public String toscan(Model model, int id){
        CraftCheckRes craftCheckRes = craftCheckResService.selectByPrimaryKey(id);
        model.addAttribute("craftCheckRes",craftCheckRes);
        return "inventory/inv_back_scan";
    }
}
