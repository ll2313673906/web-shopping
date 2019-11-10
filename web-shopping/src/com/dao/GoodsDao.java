package com.dao;

import com.entity.Goods;

import java.util.HashMap;
import java.util.List;

public interface GoodsDao {
    //得到所有物品
    public List<HashMap> getAllGoods() throws Exception;
    //统计书籍数量——确定主界面展示行数
    public int countGoods() throws Exception;
    //根据goodsName查询信息——展示排行前9的goods
    public List<HashMap> getGoodsByGoodsName(String goodsName) throws Exception;
    //更改goods的被点击次数——被点击时触发
    public void updateClickByGoodsName(Goods good) throws Exception;
}
