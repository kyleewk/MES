package cn.kgc.control;

import cn.kgc.service.ResourceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/Resource")
public class ResourceController {
    @Resource
    private ResourceService resourceService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer id){
        PageHelper.orderBy("id desc");
        PageInfo pageInfo =resourceService.findList(id, page, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("id", id);
        return "inventory/inv_search_resource";
    }

    @RequestMapping("/toget")
    public String toget(Model model, int id){
        cn.kgc.pojo.Resource resource = resourceService.selectByPrimaryKey(id);
        model.addAttribute("resource", resource);
        return "inventory/resource_modify";
    }

    @RequestMapping("/add")
    public String add(Model model, cn.kgc.pojo.Resource resource) {
        resourceService.insert(resource);
        return "redirect:/Resource/list";
    }

    @RequestMapping("/toscan")
    public String toscan(Model model, int id) {
        cn.kgc.pojo.Resource resource = resourceService.selectByPrimaryKey(id);
        model.addAttribute("resource", resource);
        return "inventory/products_scan";
    }

    @RequestMapping("/del")
    public String del(int id){
        resourceService.deleteByPrimaryKey(id);
        return "redirect:/Resource/list";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model) {
        return "inventory/resource_add";
    }

    @RequestMapping("/modify")
    public String modify(Model model, cn.kgc.pojo.Resource resource) {

        resourceService.updateByPrimaryKeySelective(resource);

        return "redirect:/Resource/list";
    }
}
