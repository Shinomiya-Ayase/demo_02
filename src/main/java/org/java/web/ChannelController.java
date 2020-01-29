package org.java.web;

import org.java.entity.ChannelType;
import org.java.service.ChannelTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;

@RestController
public class ChannelController {

    @Autowired
    private ChannelTypeService cts;

    @PostMapping("addChannelType/{name}")
    public void addChannelType(@PathVariable String name){
        cts.save(new ChannelType(null,name));
    }

    @PostMapping("delChannelType")
    public void delChannelType(@RequestBody String[] array){
        cts.removeByIds(Arrays.asList(array));
    }
}
