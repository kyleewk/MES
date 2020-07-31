package cn.kgc.control;


import cn.kgc.pojo.Employee;
import cn.kgc.pojo.Order;
import cn.kgc.service.impl.EmployeeService;
import cn.kgc.service.impl.OrderService;
import cn.kgc.service.impl.ProcessService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("order")
public class OrderController {


    @Resource
    private OrderService orderService;

    @Resource
    private EmployeeService employeeService;


    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       @RequestParam(defaultValue="0") Integer productline,
                       String machineType){
        PageInfo pageInfo = orderService.findList(productline,machineType,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("pro",productline);
        model.addAttribute("machineType",machineType);
        return "produce/pro_list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "produce/pro_add";
    }


    @RequestMapping("/add")
    public String add(Order order,String opr){
        if (opr.equals("submm")){
            order.setStatus(1);
            order.setNextid(employeeService.getNext(1).getSn());
            orderService.insert(order);
        }
        if (opr.equals("savee")){
            orderService.insertSave(order);
        }
        return "redirect:/order/list";
    }

    @RequestMapping("/toget")
    public String toget(Model model,int id){
        model.addAttribute("order",orderService.selectByPrimaryKey(id));
        return "produce/pro_modify";
    }

    //在修改页面保存或提交
    @RequestMapping("/get")
    public String get(Order order,String opr){
        if (opr.equals("submm")){
            order.setStatus(1);
            order.setNextid(employeeService.getNext(1).getSn());
            orderService.updateByPrimaryKeySelective(order);
        }
        if (opr.equals("savee")){
            order.setStatus(0);
            orderService.updateByPrimaryKeySelective(order);
        }

        return "redirect:/order/list";
    }

    @RequestMapping("/del")
    public String del(int id){
        orderService.deleteByPrimaryKey(id);
        return "redirect:/order/list";
    }

    @RequestMapping("/toscan")
    public String toscan(Model model, int id){
        Order order = orderService.selectByPrimaryKey(id);
        model.addAttribute("order",order);
        return "produce/pro_scan";
    }

    @RequestMapping("/checklist")
    public String checklist(Model model,
                            @RequestParam(defaultValue="1") int page,
                            @RequestParam(defaultValue="5") int pageSize,
                            String leader,
                            String machineType, HttpSession session){
        Employee employee = (Employee) session.getAttribute("emp");
        PageInfo pageInfo = orderService.findCheckList(leader,machineType,employee.getSn(),page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("leader",leader);
        model.addAttribute("machineType",machineType);
        return "produce/pro_check_list";
    }

    //在list页面点提交
    @RequestMapping("/tosub")
    public String tosub(int id){
        Order order = orderService.selectByPrimaryKey(id);
        order.setStatus(1);
        order.setNextid(employeeService.getNext(1).getSn());
        orderService.updateByPrimaryKeySelective(order);
        return "redirect:/order/list";
    }

}
