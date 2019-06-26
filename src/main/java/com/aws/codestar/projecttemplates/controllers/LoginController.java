package com.aws.codestar.projecttemplates.controllers;


import com.aws.codestar.projecttemplates.dto.LoginFormDto;
import com.aws.codestar.projecttemplates.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("/login")
public class LoginController {

    final
    UserRepository userRepository;
    final
    HttpSession session;

    public LoginController(UserRepository userRepository, HttpSession session) {
        this.userRepository = userRepository;
        this.session = session;
    }

    @GetMapping
    public String prepareLoginForm(Model model){
        model.addAttribute( "loginFormDto", new LoginFormDto() );

        return "login";
    }


}