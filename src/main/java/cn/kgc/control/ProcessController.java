package cn.kgc.control;

import cn.kgc.pojo.DailyPro;
import cn.kgc.pojo.Order;
import cn.kgc.pojo.Process;
import cn.kgc.service.impl.DailyProService;
import cn.kgc.service.impl.OrderService;
import cn.kgc.service.impl.ProcessService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/process")
public class ProcessController {

    @Resource
    private ProcessService processService;

    @Resource
    private OrderService orderService;

    @Resource
    private DailyProService dailyProService;


    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="-3") Integer status,
                       Integer orderid){
        PageInfo pageInfo = processService.findList(orderid,status,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("status",status);
        model.addAttribute("orderid",orderid);
        return "produce/pro_process";
    }

    @RequestMapping("/toup")
    public String toup(Model model, Integer id){
        Process process = processService.selectByPrimaryKey(id);
        Order order = orderService.selectByPrimaryKey(process.getOrderid());
        model.addAttribute("process",process);
        model.addAttribute("order",order);
        return "produce/pro_process_up";
    }

    @RequestMapping("/up")
    public String toup(Integer id,DailyPro dailyPro){
        Process process = processService.selectByPrimaryKey(id);
        process.setNgnum(process.getNgnum()+dailyPro.getNgnum());
        process.setRealnum(process.getRealnum()+dailyPro.getRealnum());
        process.setStatus(dailyPro.getStatus());
        process.setModifydate(new Date());
        process.setIsclosed(dailyPro.getIsclosed());
        processService.updateByPrimaryKeySelective(process);
        dailyProService.insert(dailyPro);
        return "redirect:/process/list";
    }

    //查看进度更新日志
    @RequestMapping("/toHis")
    public String toHis(Model model, Integer orderid,
                        @RequestParam(defaultValue="1") int page,
                        @RequestParam(defaultValue="5") int pageSize){
        model.addAttribute("pageInfo",dailyProService.findList(orderid,page,pageSize));
        model.addAttribute("orderid",orderid);
        return "produce/pro_his_process";
    }

    //获取主页进度数据
    @ResponseBody
    @RequestMapping("/forIndexProcess")
    public List<Process> forIndexProcess(){
        return processService.forIndexProcess();
    }

}
