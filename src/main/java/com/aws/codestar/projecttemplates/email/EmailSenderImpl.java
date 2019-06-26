package com.aws.codestar.projecttemplates.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailSenderImpl implements EmailSender {

    private final JavaMailSender javaMailSender;

    public EmailSenderImpl(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    @Override
    public void sendEmail(String to, String subject, String content) {
        MimeMessage mail = javaMailSender.createMimeMessage();

        MimeMessageHelper helper = null;
        try {
            helper = new MimeMessageHelper( mail, true );
            helper.setTo( to );
            helper.setReplyTo( "yourappgmailaccount@gmail.com" );     //adjust this argument with right gmail address
            helper.setFrom( "yourappgmailaccount@gmail.com" );        //adjust this argument with right gmail address
            helper.setSubject( subject );
            helper.setText( content, true );


        } catch (MessagingException e) {
            e.printStackTrace();
        }
        javaMailSender.send( mail );
    }
}
