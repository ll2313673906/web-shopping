package com.test;

import com.dao.GoodsDao;
import com.factory.DaoFactory;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class GoodsDaoImplTest {
    GoodsDao dao = DaoFactory.getGoodsDaoInstance();

    @Test
    public void getAllGoods() throws Exception {
        System.out.println(dao.getAllGoods());
//        List<HashMap> list = dao.getAllGoods();
//        list.forEach(list1-> System.out.println(list));
    }
    @Test
    public void countGoods() throws Exception{
        System.out.println(dao.countGoods());
    }
    @Test
    public void getGoodsByGoodsName()throws Exception{
        List<HashMap> list = dao.getGoodsByGoodsName("花木兰");
        list.forEach(list1-> System.out.println(list));
    }
    @Test
    public void insertShelf() throws Exception{
        String userName="3";
        String goodsId="";
        String number="";
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String date = df.format(new Date());
        dao.insertShelf(userName,goodsId,number,date);
    }
    @Test
    public void deleteShelf() throws Exception{
        String userName="2";
        String goodsId="3";
        dao.deleteShelf(userName,goodsId);
    }
}
