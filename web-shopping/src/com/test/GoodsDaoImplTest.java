package com.test;

import com.dao.GoodsDao;
import com.factory.DaoFactory;
import org.junit.Test;

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
}
