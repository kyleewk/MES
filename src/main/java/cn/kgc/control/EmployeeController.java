package cn.kgc.control;

import cn.kgc.pojo.Department;
import cn.kgc.pojo.Employee;
import cn.kgc.service.impl.DepartmentService;
import cn.kgc.service.impl.EmployeeService;
import cn.kgc.service.impl.ProcessService;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @Resource
    private EmployeeService employeeService;

    @Resource
    private DepartmentService departmentService;




    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       String sn, String name){
        PageInfo pageInfo = employeeService.findList(sn, name, page, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "organization/employee";
    }
    @RequestMapping(value ="/toadd")
    public String toadd(Model model){

        return "organization/employee_add";
    }
    @RequestMapping(value ="/add")
    public String add(Model model, Employee employee){
        employeeService.insert(employee);
        return "redirect:/employee/list";
    }

    @RequestMapping("/login")
    public String login(String sn, String password, HttpSession session){
        //获取主体对象
        Subject subject= SecurityUtils.getSubject();
        try{
            subject.login(new UsernamePasswordToken(sn, password));
            Employee employee = employeeService.findEmpBySn(sn);
            session.setAttribute("emp", employee);
            Department department = departmentService.selectByPrimaryKey(employee.getDepartmentId());
            session.setAttribute("dept", department);
            return "forward:/index.jsp";//认证通过
        }catch (UnknownAccountException e){
            System.out.println("用户名错误");
        }catch (IncorrectCredentialsException e){
            System.out.println("密码错误");
        }
        return "forward:/login.jsp";//认证没有通过
    }
    @RequestMapping("/logout")
    public String logout(){
        Subject subject=SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/logout.jsp";
    }



    @RequestMapping("/toLogin")
    public String toLogin(){
        return "forward:/login.jsp";
    }

    @RequestMapping("/toRegister")
    public String toRegister(){
        return "organization/employee_register";
    }


    @RequestMapping("register")
    public String register(Employee employee){
        try {
            employeeService.register(employee);
            return "forward:/login.jsp";
        }catch(Exception e){
            e.printStackTrace();
            return "forward:/login.jsp";
        }

    }

}
