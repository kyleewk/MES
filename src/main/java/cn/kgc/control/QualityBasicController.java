package cn.kgc.control;

import cn.kgc.pojo.QualityBasic;
import cn.kgc.service.impl.QualityBasicService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("quality")
public class QualityBasicController {

    @Resource
    private QualityBasicService qualityBasicService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       String project,
                       String type){
        PageInfo pageInfo = qualityBasicService.findList(type,project,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("project",project);
        model.addAttribute("type",type);
        return "quality/qua_identity";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model){
        return "quality/qua_identity_add";
    }

    @RequestMapping("/add")
    public String add(QualityBasic qualityBasic){
        qualityBasicService.insertSelective(qualityBasic);
        return "redirect:/quality/list";
    }

    @RequestMapping("/del")
    public String del(int id){
        qualityBasicService.deleteByPrimaryKey(id);
        return "redirect:/quality/list";
    }

    @RequestMapping("/toget")
    public String toget(Model model,int id){
        model.addAttribute("quality",qualityBasicService.selectByPrimaryKey(id));
        return "quality/qua_identity_up";
    }

    @RequestMapping("/get")
    public String get(QualityBasic qualityBasic){
        qualityBasicService.updateByPrimaryKeySelective(qualityBasic);
        return "redirect:/quality/list";
    }

}
