package cn.kgc.control;

import cn.kgc.pojo.CraftList;
import cn.kgc.service.CraftListService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

    @Controller
    @RequestMapping("CraftList")
    public class CraftListController {
        @Resource
        private CraftListService craftListService;

        @RequestMapping("/list")
        public String list(Model model,
                           @RequestParam(defaultValue = "1") int page,
                           @RequestParam(defaultValue = "5") int pageSize,
                           String machineType,
                           String craftName) {
            PageHelper.orderBy("id desc");
            PageInfo pageInfo = craftListService.findList(machineType, craftName, page, pageSize);
            model.addAttribute("pageInfo", pageInfo);
            model.addAttribute("machineType", machineType);
            model.addAttribute("craftName", craftName);
            return "craft/MSop";
        }

        @RequestMapping("/toget")
        public String toget(Model model, int id) {
            CraftList craftList = craftListService.selectByPrimaryKey(id);
            model.addAttribute("craftList", craftList);
            return "craft/sop_modify";
        }

        @RequestMapping("/add")
        public String add(Model model, CraftList craftList) {
                craftListService.insert(craftList);
            return "redirect:/CraftList/list";
        }

        @RequestMapping("/del")
        public String del(int id) {
            craftListService.deleteByPrimaryKey(id);
            return "redirect:/CraftList/list";
        }


        @RequestMapping("/toscan")
        public String toscan(Model model, int id) {
            CraftList craftList = craftListService.selectByPrimaryKey(id);
            model.addAttribute("craftList", craftList);
            return "craft/sop";
        }

        @RequestMapping("/modify")
        public String modify(Model model, CraftList craftList) {

            craftListService.updateByPrimaryKeySelective(craftList);

            return "redirect:/InvBack/list";
        }

        @RequestMapping("/toadd")
        public String toadd(Model model) {
            return "craft/sop_add";
        }
    }

