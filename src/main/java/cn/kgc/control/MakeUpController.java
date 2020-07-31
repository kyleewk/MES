package cn.kgc.control;

import cn.kgc.pojo.MakeUp;
import cn.kgc.service.MakeUpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/MakeUp")
public class MakeUpController {
    @Resource
    private MakeUpService makeUpService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer id
                       ){
        PageHelper.orderBy("id desc");
        PageInfo pageInfo = makeUpService.findList(id, page, pageSize);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("id", id);
        return "inventory/inv_search_products";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id){
        MakeUp makeUp = makeUpService.selectByPrimaryKey(id);
        model.addAttribute("makeUp", makeUp);
        return "inventory/products_modify";
    }

    @RequestMapping("/add")
    public String add(Model model, MakeUp makeUp) {
        makeUpService.insert(makeUp);
        return "redirect:/MakeUp/list";
    }

    @RequestMapping("/toscan")
    public String toscan(Model model, int id) {
       MakeUp makeUp = makeUpService.selectByPrimaryKey(id);
        model.addAttribute("makeUp", makeUp);
        return "inventory/products_scan";
    }

    @RequestMapping("/del")
    public String del(int id){
        makeUpService.deleteByPrimaryKey(id);
        return "redirect:/MakeUp/list";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model) {
        return "inventory/products_add";
    }

    @RequestMapping("/modify")
    public String modify(Model model, MakeUp makeUp) {

        makeUpService.updateByPrimaryKeySelective(makeUp);

        return "redirect:/MakeUp/list";
    }
}
