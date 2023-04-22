package org.malaga42.conciber.controller;

import org.springframework.stereotype.Controller;

@Controller
public class IndexController {

    public String doIndex(){
        return "index";
    }
}
