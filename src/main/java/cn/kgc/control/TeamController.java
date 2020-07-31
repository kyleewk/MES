package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Team;
import cn.kgc.service.impl.TeamService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/team")
public class TeamController {
    @Resource
    private TeamService teamService;
    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="4") int pageSize,
                       Integer id, String productdepartment){
        PageInfo pageInfo = teamService.findList(id,productdepartment,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "organization/team_ann";
    }
    @RequestMapping(value = "/toadd")
    public String toadd(Model model){
        return "organization/team_ann_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Team team){
        teamService.insert(team);
        return "redirect:/team/list";
    }
}
