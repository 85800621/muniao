package com.muniao.controller;

import com.muniao.entity.Room;
import com.muniao.entity.RoomFeature;
import com.muniao.entity.RoomImage;
import com.muniao.service.RoomFeatureService;
import com.muniao.service.RoomImgService;
import com.muniao.service.RoomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 史国纲
 */
@Controller
@RequestMapping("/")
public class RoomController {
    @Resource private RoomFeatureService roomFeatureService;
    @Resource private RoomService roomService;
    @Resource private RoomImgService roomImgService;

    @RequestMapping(value = "features/{featureId}")
    public String list(@PathVariable("featureId")int featureId, Model model){
        List<Room> rooms = roomService.findAllByFeature(featureId);
        for (Room room : rooms) {
            List<RoomImage> list = roomImgService.selectAllByRoomId(room.getRoomId());
            room.setLsit(list);
        }
        model.addAttribute("rooms",rooms);
        RoomFeature roomFeature = roomFeatureService.selectFeature(featureId);
        model.addAttribute("roomFeature",roomFeature);
        return "/features";
    }

    @RequestMapping(value = "cityfeatures/{featureId}/{roomLocation}")
    public String FeatureCity(@PathVariable("featureId")int featureId,@PathVariable("roomLocation")String roomLocation, Model model){
        List<Room> rooms = roomService.findByFeatureCity(featureId,roomLocation);
        for (Room room : rooms) {
            List<RoomImage> list = roomImgService.selectAllByRoomId(room.getRoomId());
            room.setLsit(list);
        }
        model.addAttribute("rooms",rooms);
        List<Room> cityList = roomService.findByCityList(featureId);
        model.addAttribute("cityList",cityList);
        RoomFeature roomFeature = roomFeatureService.selectFeature(featureId);
        model.addAttribute("roomFeature",roomFeature);
        return "/cityfeatures";
    }

    @RequestMapping(value ="featureslist")
    public String CountFeature(Model model){
        ArrayList nums = new ArrayList();
        for(int i=0;i<11;i++){
             int number = roomService.CountFeatureList(i);
             nums.add(number);
        }
        model.addAttribute("nums",nums);
        return "/featureslist";
    }




}
