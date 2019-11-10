package com.entity;

public class Goods {
    private int goodsId;
    private String goodsName;
    private String goodsIntro;
    private String  goodsPrice;
    private int goodsNum;
    private String publisher;
    private String photo;
    private String type;
    private String click;

    public Goods() {
    }

    public Goods(int goodsId, String goodsName, String goodsIntro, String goodsPrice, int goodsNum, String publisher, String photo, String type, String click) {
        this.goodsId = goodsId;
        this.goodsName = goodsName;
        this.goodsIntro = goodsIntro;
        this.goodsPrice = goodsPrice;
        this.goodsNum = goodsNum;
        this.publisher = publisher;
        this.photo = photo;
        this.type = type;
        this.click = click;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsIntro() {
        return goodsIntro;
    }

    public void setGoodsIntro(String goodsIntro) {
        this.goodsIntro = goodsIntro;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public int getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(int goodsNum) {
        this.goodsNum = goodsNum;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getClick() {
        return click;
    }

    public void setClick(String click) {
        this.click = click;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", goodsName='" + goodsName + '\'' +
                ", goodsIntro='" + goodsIntro + '\'' +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsNum=" + goodsNum +
                ", publisher='" + publisher + '\'' +
                ", photo='" + photo + '\'' +
                ", type='" + type + '\'' +
                ", click='" + click + '\'' +
                '}';
    }
}
