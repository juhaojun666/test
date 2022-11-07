package cdu.util;

import cdu.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//登录拦截的拦截器
public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //拦截器拦截的本质是拦截uri
        String uri = request.getRequestURI();
        StringBuffer url = request.getRequestURL();
        //登录页面的请求和登陆方法的请求应该放开    后续如果编写注册功能也要放开
        if (uri.contains("login")||uri.contains("adduser")) {
            return true;
        }
        //判断用户是否为登录状态
        User user=(User)request.getSession().getAttribute("user");
        if(user!=null){
            return true;
        }else {
            //用户未登录状态 停留在登录页面
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);

        }
        return false;

    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
