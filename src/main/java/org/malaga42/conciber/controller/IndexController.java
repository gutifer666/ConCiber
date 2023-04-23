package org.malaga42.conciber.controller;

import org.malaga42.conciber.database.dto.EntryRepository;
import org.malaga42.conciber.database.entity.EntryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Optional;

@Controller
public class IndexController {
    @Autowired
    public EntryRepository entryRepository;

    @GetMapping(value={"/", ""})
    public String getIndex(){
        return "index";
    }


    @GetMapping(value="/resources")
    public String getResources(){
        return "resources";
    }

    @GetMapping("/tool/password")
    public String getPasswordChecker(){
        return "password-checker";
    }

    @GetMapping(value="/posts/page/{id}")
    public String getPosts(@PathVariable("id") Optional<Integer> optionalInteger, Model model){
        Integer id = (optionalInteger.isPresent())? optionalInteger.get() : 0;
        if (id < 0) id = 0;
        PageRequest pageRequest = PageRequest.of(id, 20);
        List<EntryEntity> entryEntityList = entryRepository.findAll(pageRequest).toList();
        if (entryEntityList.isEmpty())
            return "error";
        model.addAttribute("posts", entryEntityList);
        return "page-posts";
    }

    @GetMapping(value="/posts/{id}")
    public String getPost(@PathVariable("id") Long id, Model model){
        Optional<EntryEntity> entryEntityOptional = entryRepository.findById(id);
        if (entryEntityOptional.isEmpty()){
            return "error";
        }
        model.addAttribute("post", entryEntityOptional.get());
        return "post";
    }

    @GetMapping (value="/dictionary/{id}")
    public String doDictionary(@PathVariable("id") Integer id){
        return "dictionary/" + id + "/index";
    }
}
