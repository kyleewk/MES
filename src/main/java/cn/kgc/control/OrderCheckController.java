package cn.kgc.control;


import cn.kgc.pojo.Order;
import cn.kgc.pojo.OrderCheck;
import cn.kgc.pojo.Trace;
import cn.kgc.service.impl.*;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("orderCheck")
public class OrderCheckController {


    @Resource
    private OrderCheckService orderCheckService;

    @Resource
    private OrderService orderService;

    @Resource
    private EmployeeService employeeService;

    @Resource
    private TraceService traceService;

    @Resource
    private ProcessService processService;

    @Resource
    private CraftListServiceimpl craftListServiceimpl;

    @RequestMapping("/tocheck")
    public String tocheck(Model model,int id){
        model.addAttribute("order",orderService.selectByPrimaryKey(id));
        model.addAttribute("orderCheck",orderCheckService.selectByOrderId(id));
        return "produce/pro_check";
    }

    @RequestMapping("/check")
    public String check(OrderCheck orderCheck){
        Order order = orderService.selectByPrimaryKey(orderCheck.getOrderid());

            if (orderCheck.getResult().equals("同意")){
                order.setStatus(order.getStatus()+1);
                if (order.getStatus() == 4){
                    //已完成，下一步处理人置零
                    order.setNextid("0");
                    //增加追溯处理
                    /*Trace trace = new Trace();
                    trace.setOrderid(orderCheck.getOrderid());
                    trace.setProductid(order.getProductline());
                    trace.setTeamid(Integer.valueOf(order.getTeam()));*/
                    Trace trace = new Trace(orderCheck.getOrderid(),
                                            order.getMachinetype(),
                                            order.getProductline(),
                                            Integer.valueOf(order.getTeam()),
                                            orderCheck.getOrderid(),
                                            orderCheck.getOrderid(),
                                            orderCheck.getOrderid());
                    traceService.insertSelective(trace);
                    //增加进度处理
                    processService.insertPro(orderCheck.getOrderid());
                }else {
                    order.setNextid(employeeService.getNext(order.getStatus()).getSn());
                }
            }
            else if (orderCheck.getResult().equals("驳回")){
                order.setStatus(-1);
                order.setNextid(order.getLeader());
            }
            else if (orderCheck.getResult().equals("拒绝")){
                order.setStatus(-2);
                order.setNextid("0");
            }
        orderService.updateToCheck(order);
        orderCheckService.insert(orderCheck);
        return "redirect:/order/checklist";
    }

    @RequestMapping("/hislist")
    public String hisklist( Model model,int orderid,
                            @RequestParam(defaultValue="1") int page,
                            @RequestParam(defaultValue="5") int pageSize){
        model.addAttribute("pageInfo",orderCheckService.findList(orderid,null,page,pageSize));
        model.addAttribute("orderid",orderid);
        return "produce/pro_his_check";
    }


}
