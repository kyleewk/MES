package cn.kgc.control;

import cn.kgc.pojo.QualityLog;
import cn.kgc.service.impl.QualityLogService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("qualitylog")
public class QualityLogController {
    @Resource
    private QualityLogService qualityLogService;

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue="1") int page,
                       @RequestParam(defaultValue="5") int pageSize,
                       Integer orderId){
        PageInfo pageInfo = qualityLogService.findList(orderId,page,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("orderId",orderId);
        return "quality/qua_qa_log";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model,int id){
        model.addAttribute("quality",qualityLogService.selectByPrimaryKey(id));
        return "quality/qua_repair_add";
    }

    //看似是add其实是get哈哈
    @RequestMapping("/add")
    public String add(QualityLog qualityLog){
        qualityLogService.updateByPrimaryKey(qualityLog);
        return qualityLog.getIsrepair() == 1 ? "/produce/pro_repair_add" : "redirect:/quality/list";
        //一下少了三行，感觉自己好棒，嘿嘿
        /*if(qualityLog.getIsrepair() == 1){
            return "/produce/pro_repair_add";
        }
        return "redirect:/quality/list";*/
    }

/*    @RequestMapping("/del")
    public String del(int id){
        qualityLogService.deleteByPrimaryKey(id);
        return "redirect:/quality/list";
    }*/

    @RequestMapping("/toget")
    public String toget(Model model,int id){
        model.addAttribute("quality",qualityLogService.selectByPrimaryKey(id));
        return "quality/qua_repair_modify";
    }

    @RequestMapping("/get")
    public String get(QualityLog qualityLog){
        qualityLogService.updateByPrimaryKey(qualityLog);
        return "redirect:/qualitylog/list";
    }

    //就是修改个状态
    @RequestMapping("/solve")
    public String solve(int id){
        QualityLog qualityLog = qualityLogService.selectByPrimaryKey(id);
        qualityLog.setStatus(3);
        qualityLogService.updateByPrimaryKeySelective(qualityLog);
        return "redirect:/qualitylog/list";
    }

    @RequestMapping("/toscan")
    public String toscan(Model model,int id){
        model.addAttribute("quality",qualityLogService.selectByPrimaryKey(id));
        return "quality/qua_repair_scan";
    }

    @RequestMapping("/toaddlog")
    public String toaddlog(){
        return "quality/qua_log_add";
    }

    @RequestMapping("/addlog")
    public String addlog(QualityLog qualityLog){
        qualityLogService.insert(qualityLog);
        return "redirect:/qualitylog/list";
    }

}
