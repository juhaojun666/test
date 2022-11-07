package cdu.controller;

import cdu.pojo.User;
import cdu.service.UserServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceInf userservice;


    @RequestMapping("/loginCheck")
    public ModelAndView loginCheck(User user,HttpSession session){
        ModelAndView mv=new ModelAndView();
        User u=userservice.loginCheck(user);
        if(u!=null){
            //吧查询出来的用户放入session
            session.setAttribute("user",u);

            mv.setViewName("redirect:../place/placeList");
        }else {
            mv.setViewName("login");  //WEB-INF/jsp/login.jsp
        }
        return mv;
    }

    @RequestMapping("/addUser")
    public String addUser(User user){
        return userservice.addUser(user)>0?"redirect:loginCheck": "adduser";
    }

    //通用跳转方法
    @RequestMapping("{page}")
    public String toPage(@PathVariable() String page){
        return page;
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }
}
