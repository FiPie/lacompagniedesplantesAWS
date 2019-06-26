package com.aws.codestar.projecttemplates.controllers;

import com.aws.codestar.projecttemplates.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("/")
public class HomepageController {

    private final HttpSession session;
    private final UserRepository userRepository;

    public HomepageController(HttpSession session, UserRepository userRepository) {
        this.session = session;
        this.userRepository = userRepository;
    }

    @GetMapping
    public String loadWelcomePage(Model model, Principal principal) {
        if (principal != null) {

            if (session.getAttribute( "userId" ) == null) {
                session.setAttribute( "userId", userRepository.findByEmail( principal.getName() ).getId() );
            }
        }
        return "index";
    }

    @GetMapping("aboutMe")
    public String loadQuiSuisJePage(Model model) {

        return "quiSuisJe";
    }

    @GetMapping("reiki")
    public String loadReikiOffrePage(Model model) {

        return "reiki";
    }

    @GetMapping("herbes")
    public String loadHerbesOffrePage(Model model) {

        return "herbes";
    }

    @GetMapping("agenda")
    public String loadAgendaAteliersPage(Model model) {

        return "agendaAteliers";
    }

    @GetMapping("herbier")
    public String loadMonHerbierPage(Model model) {

        return "monHerbier";
    }

    @GetMapping("gallerie")
    public String loadEventGalleriePage(Model model) {

        return "eventGallerie";
    }
}
