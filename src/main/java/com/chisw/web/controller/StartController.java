package com.chisw.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StartController {

    @RequestMapping(path = "/contract", method = RequestMethod.GET)
    public String createContract(){
        return "create_contract";
    }
}
