package cn.kgc.control;

import cn.kgc.service.impl.DepartmentService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/department")
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;
    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       String department,
                       String manger){
        PageInfo pageInfo = departmentService.findList(department,manger,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "basics/department";
    }
}
