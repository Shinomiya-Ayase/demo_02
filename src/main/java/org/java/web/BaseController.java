package org.java.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class BaseController {
    @GetMapping({"to/{r}/{t}","to/{t}"})
    public String target(@PathVariable(required = false) String r, @PathVariable String t){
        if(r==null){
            return "/"+t;
        }
        return "/"+r+"/"+t;
    }
}
