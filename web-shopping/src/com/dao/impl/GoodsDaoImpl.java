package com.dao.impl;

import com.entity.Goods;
import com.util.JDBCUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class GoodsDaoImpl extends JDBCUtil implements GoodsDao {
    @Override
    public List<HashMap> getAllGoods() throws Exception {
        List<HashMap> list = new ArrayList<>();
        String sql = "SELECT * FROM goods";
        list=this.executeQuery(sql,null);
        return list;
    }

    @Override
    public int countGoods() throws Exception {
        String sql="SELECT * FROM goods";
        List<HashMap> list = new ArrayList<>();
        list= this.executeQuery(sql,null);
        int n = list.size();
        return n;
    }

    @Override
    public List<HashMap> getGoodsByGoodsName(String goodsName) throws Exception {
        List<HashMap> list = new ArrayList<>();
        String sql = "SELECT * FROM goods where goodsName=?";
        Object[] params={goodsName};
        list=this.executeQuery(sql,params);
        return list;
    }

    @Override
    public void updateClickByGoodsName(Goods good) throws Exception {
        String sql = "UPDATE goods SET click=? WHERE goodsName=?";
        Object[] params={good};
        int n=this.executeUpdate(sql,params);
        if (n==1){
            System.out.println(good.getGoodsName()+"的点击数已被更新");
        }else {
            System.out.println("更新失败");
        }

    }

}
