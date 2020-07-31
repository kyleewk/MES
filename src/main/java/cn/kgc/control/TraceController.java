package cn.kgc.control;

import cn.kgc.pojo.Order;
import cn.kgc.service.impl.CraftListServiceimpl;
import cn.kgc.service.impl.OrderService;
import cn.kgc.service.impl.TraceService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("trace")
public class TraceController {

    @Resource
    private TraceService traceService;

    @Resource
    private OrderService orderService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer productline,
                       Integer orderId){
        PageInfo pageInfo = traceService.findList(productline,orderId,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("pro",productline);
        model.addAttribute("orderId",orderId);
        return "produce/pro_trace";
    }






}
