package cn.kgc.control;

import cn.kgc.pojo.Bom;
import cn.kgc.pojo.Equipment;
import cn.kgc.service.impl.EquipmentService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/equipment")
public class EquipmentController {
    @Resource
    private EquipmentService equipmentService;
    @RequestMapping(value = "/list")
    public String list(Model model,
                        @RequestParam(defaultValue="1") int page,
                        @RequestParam(defaultValue="4") int pageSize,
                        String devicename,
                        String unittype){
        PageInfo pageInfo = equipmentService.findList(devicename,unittype,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "equipment/melist";
    }
    @RequestMapping(value = "/toadd")
    public String toadd(Model model){
        return "equipment/me_add";
    }
    @RequestMapping(value = "/add")
    public String add(Model model, Equipment equipment){
        equipmentService.insert(equipment);
        return "redirect:/equipment/list";
    }
}
