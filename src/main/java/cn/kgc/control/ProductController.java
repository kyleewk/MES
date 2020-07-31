package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Product;
import cn.kgc.service.impl.ProductService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
    @Resource
    private ProductService productService;

    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       String producttype,
                       String productname){
        PageInfo pageInfo = productService.findList(producttype,productname,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "basics/pro_type";
    }
    @RequestMapping(value = "/toadd")
    public String toadd(Model model){
        return "basics/pro_type_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Product product){
        productService.insert(product);
        return "redirect:/product/list";
    }
}
