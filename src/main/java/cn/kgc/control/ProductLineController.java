package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.ProductLine;
import cn.kgc.service.impl.ProductLineService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/productLine")
public class ProductLineController {
    @Resource
    private ProductLineService productLineService;
    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       Integer id, String productdeparment){
        PageInfo pageInfo = productLineService.findList(id,productdeparment,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "organization/pro_ann";
    }
    @RequestMapping(value ="/toadd")
    public String toadd(Model model){
        return "organization/pro_ann_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, ProductLine productLine){
        productLineService.insert(productLine);
        return "redirect:/productLine/list";
    }
}
