package com.muniao.controller;

import com.muniao.entity.Image;
import com.muniao.entity.Room;
import com.muniao.entity.RoomFeature;
import com.muniao.entity.User;
import com.muniao.service.RoomFeatureService;
import com.muniao.service.RoomImgService;
import com.muniao.service.RoomService;
import com.muniao.service.UserService;
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
    @Resource private UserService userService;




    @RequestMapping(value = "/index")
    public String roomcity(Model model){
        List<String> citys = roomService.selectCountCity();
        model.addAttribute("citys",citys);
        return "/index";
    }


    @RequestMapping(value = "features/{featureId}/{currentPage}")
    public String list(@PathVariable("featureId")int featureId,@PathVariable("currentPage")int currentPage,Model model){
        //分页
        List<Room> rooms = roomService.findAllByFeature(featureId,currentPage);
        //房间图片
        for (Room room : rooms) {
            List<Image> list = roomImgService.selectAllByRoomId(room.getRoomid());
            room.setLsit(list);
        }
        //城市查询
        List<Room> cityList = roomService.findByCityList(featureId);
        model.addAttribute("cityList",cityList);
        model.addAttribute("rooms",rooms);
        //房间特色
        RoomFeature roomFeature = roomFeatureService.selectFeature(featureId);
        model.addAttribute("roomFeature",roomFeature);
        List pageList= roomService.countFeatureRoom(featureId);
        model.addAttribute("pageList",pageList);
        Integer roomNum = roomService.countFeatureRoomNum(featureId);
        model.addAttribute("roomNum",roomNum);
        return "/features";
    }

    @RequestMapping(value = "cityfeatures/{featureId}/{roomLocation}/{currentPage}")
    public String FeatureCity(@PathVariable("featureId")int featureId,@PathVariable("roomLocation")String roomLocation,@PathVariable("currentPage")int currentPage, Model model){
        List<Room> rooms = roomService.findByFeatureCity(featureId,roomLocation,currentPage);
        for (Room room : rooms) {
            List<Image> list = roomImgService.selectAllByRoomId(room.getRoomid());
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

    @RequestMapping(value = "city/{roomLocation}/{currentPage}")
    public String findByCity(@PathVariable("roomLocation")String roomLocation,
                             @PathVariable("currentPage")int currentPage,String indexRoomLocation,Model model){

        System.out.println(indexRoomLocation);
        if (roomLocation.equals("index")){
            roomLocation = indexRoomLocation;
        }
        System.out.println(roomLocation);
        List<Room> roomList = roomService.findByCityName(roomLocation,currentPage);
        for (Room room : roomList) {
            List<Image> imgList = roomImgService.selectAllByRoomId(room.getRoomid());
            room.setLsit(imgList);
        }
        model.addAttribute("roomList",roomList);
        //房间类型
        List<Room> roomTypes  = roomService.selectRoomType(roomLocation);
        model.addAttribute("roomTypes",roomTypes);
        //价格区间
        List<Room> roomIntervals = roomService.selectRoomInterval(roomLocation);
        model.addAttribute("roomIntervals",roomIntervals);
        //出租类型
        List<Room> roomMethods = roomService.selectRoomMethod(roomLocation);
        model.addAttribute("roomMethods",roomMethods);
        //户型
        List<Room> roomStructuress = roomService.selectRoomStructure(roomLocation);
        model.addAttribute("roomStructures",roomStructuress);
        return "/city";
    }

    @RequestMapping(value = "cityTitle/{roomLocation}/{currentPage}/{typeId}/{priceId}/{methodId}/{structureId}")
    public String selectByTitle(@PathVariable("roomLocation")String roomLocation,
                             @PathVariable("currentPage")int currentPage,Model model
                                , @PathVariable("typeId")int typeId
                                , @PathVariable("priceId")int priceId
                                , @PathVariable("methodId")int methodId
                                , @PathVariable("structureId")int structureId){
        int typ = typeId;int pri=priceId;int met = methodId;int str = structureId;
        model.addAttribute("typ",typ);
        model.addAttribute("pri",pri);
        model.addAttribute("met",met);
        model.addAttribute("str",str);
        List<Room> roomList = roomService.selectByCityTitle(roomLocation,currentPage,typeId,priceId,methodId,structureId);
        for (Room room : roomList) {
            List<Image> imgList = roomImgService.selectAllByRoomId(room.getRoomid());
            room.setLsit(imgList);
        }
        model.addAttribute("roomList",roomList);
        //房间类型
        List<Room> roomTypes  = roomService.selectRoomType(roomLocation);
        model.addAttribute("roomTypes",roomTypes);
        //价格区间
        List<Room> roomIntervals = roomService.selectRoomInterval(roomLocation);
        model.addAttribute("roomIntervals",roomIntervals);
        //出租类型
        List<Room> roomMethods = roomService.selectRoomMethod(roomLocation);
        model.addAttribute("roomMethods",roomMethods);
        //户型
        List<Room> roomStructures = roomService.selectRoomStructure(roomLocation);
        model.addAttribute("roomStructures",roomStructures);
        return "/cityTitle";
    }


    @RequestMapping("room/{roomId}")
    public String findByRoomId(@PathVariable("roomId")int roomId,Model model){
        Room room = roomService.selectRoomById(roomId);
        model.addAttribute("room",room);
        List<Image> images = roomImgService.selectAllByRoomId(roomId);
        model.addAttribute("images",images);
        return "/room";
    }

    @RequestMapping("landlordrooms/{userId}")
    public String findRoomByUserID(@PathVariable("userId")int userId,Model model){
        List<Room> rooms = roomService.selectByUserId(userId);
        model.addAttribute("rooms",rooms);
        User user = userService.selectByUserId(userId);
        model.addAttribute("user",user);
        return "/landlordrooms";
    }
}
