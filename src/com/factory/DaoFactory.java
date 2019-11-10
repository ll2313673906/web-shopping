package com.factory;

import com.dao.GoodsDao;
import com.dao.UsersDao;
import com.dao.impl.GoodsDaoImpl;
import com.dao.impl.UsersDaoImpl;

public class DaoFactory {
    public static GoodsDao getGoodsDaoInstance(){
        return new GoodsDaoImpl();
    }
    public static UsersDao getUsersDaoInstance() {return new UsersDaoImpl(); }
}
