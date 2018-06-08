package com.muniao.controller;

import com.muniao.entity.Room;
import com.muniao.service.RoomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class RoomController {
    @Resource private RoomService roomService;

    @RequestMapping(value = "featureslist/{featureId}")
    public String list(@PathVariable("featureId")int featureId, Model model){
        List<Room> rooms = roomService.findAllByFeature(featureId);
        model.addAttribute("rooms",rooms);
        return "/featureslist";
    }
}
