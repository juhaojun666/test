package cdu.controller;

import com.github.pagehelper.PageInfo;
import cdu.pojo.Place;
import cdu.service.PlaceServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller//该注解与@service功能一样
@RequestMapping("/place")
public class PlaceController {
    @Autowired//自动装配  注入的是接口而不是实现类
    private PlaceServiceInf placeservice;
    //分页查询
    @RequestMapping("/placeList")
        public ModelAndView selectAll(@RequestParam(defaultValue = "1") Integer pageNum,@RequestParam(defaultValue = "6") Integer pageSize){
            ModelAndView mv=new ModelAndView();
            PageInfo<Place> pi=placeservice.selectAll(pageNum,pageSize);
            //吧查询出来的分页插件类型集合存入前端
            mv.addObject("pi",pi);
            mv.setViewName("query");
            return mv;
        }


//    @RequestMapping("/selectList")
//    public ModelAndView selectPlaceByName(@RequestParam(defaultValue = "1") Integer pageNum,@RequestParam(defaultValue = "3") Integer pageSize){
//        ModelAndView bv=new ModelAndView();
//        PageInfo<Place> m=placeservice.selectPlaceByName(pageNum,pageSize);
//        //吧查询出来的分页插件类型集合存入前端
//        bv.addObject("m",m);
//        bv.setViewName("mohu");
//        return bv;
//    }
    @RequestMapping("/selectPlaceByName")
    public ModelAndView selectPlaceByName(String changdi){
        List<Place> m = placeservice.selectPlaceByName(changdi);

        ModelAndView mv = new ModelAndView();
        mv.addObject("m", m);
        mv.setViewName("mohu");
        return mv;
    }


    //添加功能2
    @RequestMapping("/addPlace")
    public String addPlace(Place place){
        return placeservice.addPlace(place)>0?"redirect:placeList": "add";
    }

    //通用跳转方法
    @RequestMapping("{page}")
    public String toPage(@PathVariable() String page){
        return page;
    }

    @RequestMapping("/showPlace")
    public String showPlace(int id, Model model){
        Place place=placeservice.selectPlaceById(id);
        model.addAttribute("place",place);
        return "update";
    }

    @RequestMapping("/updatePlace")
    public String updatePlace(Place place){
        return placeservice.updatePlace(place)>0?"redirect:placeList":"error";
    }

    @RequestMapping("/deletePlace")
    public String deletePlace(int id){
        return placeservice.deletePlace(id)>0?"redirect:placeList":"error";
    }
}

