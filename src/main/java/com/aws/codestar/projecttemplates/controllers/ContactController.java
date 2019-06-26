package com.aws.codestar.projecttemplates.controllers;


import com.aws.codestar.projecttemplates.dto.MessageDto;
import com.aws.codestar.projecttemplates.email.EmailSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/contact")
public class ContactController {

    private final
    EmailSender emailSender;

    public ContactController(EmailSender emailSender) {
        this.emailSender = emailSender;
    }

    @GetMapping
    public String contactMessageSender(Model model) {
        model.addAttribute( "message", new MessageDto() );
        return "contact";
    }

    @PostMapping
    public String contactMessageSender(@ModelAttribute("message") @Valid MessageDto form, BindingResult result) {
        String email = "youremailaddress@gmail.com";    //change this value to the email address to which you wish to receive emails sent from 'Contact' page via contact form


        if (!form.getContent().equals( "" )) {
            emailSender.sendEmail( email, "Message du site LaCompagnieDesPlantes via le formulaire de contact de l'utilisateur: " + form.getFirstName2() + " " + form.getLastName2(), form.getContent() + "<br><br>" + " Adresse email: " + form.getEmail2() );
            return "redirect:/";
        } else {
            result.rejectValue( "content", null, "Message Empty!" );
            return "contact";
        }

    }

}
