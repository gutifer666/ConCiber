package org.malaga42.conciber.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IndexController {

    @GetMapping(value={"/", ""})
    public String getIndex(){
        return "index";
    }

    @GetMapping(value="/posts/{id}")
    public String doPosts(@PathVariable("id") Integer id){
        return "post/" + id + "/index";
    }

    @GetMapping (value="/dictionary/{id}")
    public String doDictionary(@PathVariable("id") Integer id){
        return "dictionary/" + id + "/index";
    }
}
