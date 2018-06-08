package com.muniao.entity;

import java.util.Date;

/**
 * 用户
 * 2018/6/7
 * 史国纲
 */
public class User {
    /**
     * 用户ID
     */
    private int userId;
    /**
     * 用户姓名
     */
    private String userName;
    /**
     * 用户账号
     */
    private String userNumber;
    /**
     * 用户电话
     */
    private String telephone;
    /**
     * 用户email
     */
    private String email;
    /**
     * 房间名称
     */
    private String roomName;
    /**
     * 用户密码
     */
    private String password;
    /**
     * 性别
     */
    private String sex;
    /**
     * 生日
     */
    private Date birth;
    /**
     * 所在城市
     */
    private String city;
    /**
     * 家乡
     */
    private String hometown;
    /**
     * 血型
     */
    private String blood;
    /**
     * 职业
     */
    private String work;
    /**
     * 教育水平
     */
    private String edu;
    /**
     * 其他电话
     */
    private String otherTEL;
    /**
     * 爱好
     */
    private String hobby;
    /**
     * 个人介绍
     */
    private String introduce;
    /**
     * 用户头像
     */
    private String picture;

    /**
     * 言
     *
     */
    private String passwordSalt;

    public String getPasswordSalt() {
        return passwordSalt;
    }

    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    public String getOtherTEL() {
        return otherTEL;
    }

    public void setOtherTEL(String otherTEL) {
        this.otherTEL = otherTEL;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
