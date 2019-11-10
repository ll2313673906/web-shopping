package com.dao.impl;

import com.dao.UsersDao;
import com.entity.Users;
import com.util.DataBaseConnection;
import com.util.JDBCUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UsersDaoImpl extends JDBCUtil implements UsersDao {
    @Override
    public boolean findUser(Users user) throws Exception {
        Boolean flag = false;
        String sql = "SELECT * FROM users WHERE username=? AND PASSWORD=?";
        Object[] params = {user.getUsername(),user.getPassword()};
        List<HashMap> list=this.executeQuery(sql,params);
        if (list.size()==0){
            flag = false;
        }else {
            flag = true;
        }
        return flag;

    }

    @Override
    public List<HashMap> searchUser(String username) throws Exception {
        List<HashMap> userList = new ArrayList<>();
        String sql = "select * from users where username =?";
        Object[] params = {username};
        userList=this.executeQuery(sql,params);
        return userList;

    }

    @Override
    public List<HashMap> searchShelf(String username) throws Exception {
        List<HashMap> shelfList;
        String sql = "SELECT  t1.`goodsName`,t1.`goodsPrice`,t2.`date`,t2.`goodsId`,t2.`number`,t3.`truename`\n" +
                "FROM goods t1\n" +
                "LEFT JOIN shelf t2\n" +
                "ON t1.`goodsId`=t2.`goodsId`\n" +
                "LEFT JOIN users t3\n" +
                "ON t3.`username` = t2.`username`\n" +
                "WHERE t3.`username`=?";
        Object[] params = {username};
        shelfList = this.executeQuery(sql,params);
        return shelfList ;
    }
}
