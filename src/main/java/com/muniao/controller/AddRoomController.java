package com.muniao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.muniao.entity.*;
import com.muniao.service.AddRoomService;
import com.muniao.service.RoomImgService;
import com.muniao.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by XiaBing on 2018/6/13 (22:08)
 * 添加房源
 */
@SessionAttributes("room")
@Controller
@RequestMapping("/Room")
public class AddRoomController {

    @Autowired
    private AddRoomService addRoomService;

    @Autowired
    private RoomService roomService;

    @Autowired
    private RoomImgService roomImgService;

    @RequestMapping("/step1")
    public String preadd(){
        return "/step1";
    }

    @ResponseBody
    @RequestMapping("/Submit_Step1")
    public JsonData addRoomStep1(String postData,Model model){

        Room room = JSON.parseObject(postData, Room.class);

        // 测试用user 之后从session中取
        User user = new User();
        user.setUserId(1);

        addRoomService.AddRoomServiceStep1(user,room);
        model.addAttribute("room",room);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);

        return jsonData;
    }

    @ResponseBody
    @RequestMapping("Submit_Step2")
    public JsonData addRoomStep2(String postData,HttpSession session){

        Room sessionRoom = (Room) session.getAttribute("room");
        Integer roomid = sessionRoom.getRoomid();
        Room room = JSON.parseObject(postData, Room.class);
        room.setRoomid(roomid);
        addRoomService.AddRoomServiceStep2(room);
        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        return jsonData;
    }

    @ResponseBody
    @RequestMapping("Submit_Step3")
    public JsonData addRoomStep3(String postData,HttpSession session){

        Room sessionRoom = (Room) session.getAttribute("room");
        Integer roomid = sessionRoom.getRoomid();
        Room room = JSON.parseObject(postData, Room.class);
        room.setRoomid(roomid);
        addRoomService.AddRoomServiceStep3(room);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        return jsonData;
    }

    @ResponseBody
    @RequestMapping("Submit_Step4")
    public JsonData addRoomStep4(String postData,HttpSession session){

        Room sessionRoom = (Room) session.getAttribute("room");
        Integer roomid = sessionRoom.getRoomid();
        Room room = JSON.parseObject(postData, Room.class);
        room.setRoomid(roomid);
        addRoomService.AddRoomServiceStep4(room);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        return jsonData;
    }

    @ResponseBody
    @RequestMapping("Submit_Step5")
    public JsonData addRoomStep5(String postData,HttpSession session){

        Room sessionRoom = (Room) session.getAttribute("room");
        Integer roomid = sessionRoom.getRoomid();
        Room room = JSON.parseObject(postData, Room.class);
        room.setRoomid(roomid);
        addRoomService.AddRoomServiceStep5(room);
        System.out.println(postData);
        PostData postData1 = JSONObject.parseObject(postData,PostData.class);
        String[] imageArr = postData1.getImage();

        for (String s : imageArr) {
            Image image = JSONObject.parseObject(s,Image.class);
            image.setRoom_id(roomid);
            roomImgService.insertImage(image);
        }

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        return jsonData;
    }

    @RequestMapping("index")
    public String listRooms(Model model){

        // 测试用user 之后从session中取
        User user = new User();
        user.setUserId(2);

        int userId = user.getUserId();
        List<Room> roomList = roomService.selectByUserId(userId);
        model.addAttribute("roomList",roomList);

        return "roommanagement";
    }

    @ResponseBody
    @RequestMapping("deleteroom")
    public JsonData deleteRoom(String data){
        JsonData jsonData = JSON.parseObject(data, JsonData.class);
        Integer roomid = jsonData.getRoomid();
        addRoomService.deleteRoomByRoomid(roomid);
        jsonData.setStatus(0);
        jsonData.setMessage("房源删除成功");
        return jsonData;
    }
}
