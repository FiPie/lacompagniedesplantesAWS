package com.aws.codestar.projecttemplates.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.aws.codestar.projecttemplates.Response;

/**
 * Basic Spring web service controllers that handles all GET requests.
 */
@RestController
@RequestMapping("/hello")
public class
HelloWorldController {

    private static final String MESSAGE_FORMAT = "Hello %s!";

    @RequestMapping(method = RequestMethod.GET)
    public Response helloWorldGet(@RequestParam(value = "name", defaultValue = "World") String name) {
        return new Response(String.format(MESSAGE_FORMAT, name));
    }

    @RequestMapping(method = RequestMethod.POST)
    public Response helloWorldPost(@RequestParam(value = "name", defaultValue = "World") String name) {
        return new Response(String.format(MESSAGE_FORMAT, name));
    }
}
