package com.hana.onemoim.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

    @GetMapping(value = "/signin")
    public ModelAndView showSignin() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("signin");
        return modelAndView;
    }

    @GetMapping(value = "/signup")
    public ModelAndView showSignup() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("signup");
        return modelAndView;
    }
}