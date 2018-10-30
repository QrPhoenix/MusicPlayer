package com.musicplayer.controller;

import com.musicplayer.constant.Constant;
import com.musicplayer.db.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by QXY on 2018/10/30.
 */
@Controller
public class HomePageController {

    @RequestMapping("/home")
    public ModelAndView homePage(HttpServletRequest request, Model model)
    {
        ModelAndView mv =  new ModelAndView();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute(Constant.LOGIN_SYSTEM_USER);
        if(user == null){
            mv.setViewName("login");
        }
        else
        {
            model.addAttribute("username", user.getName());
            mv.setViewName("home");

        }
        return mv;
    }
}
