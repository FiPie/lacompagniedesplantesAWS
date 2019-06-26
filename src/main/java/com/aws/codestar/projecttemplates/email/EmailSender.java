package com.aws.codestar.projecttemplates.email;

public interface EmailSender {

    void sendEmail(String to, String subject, String content);

}