package com.test;

import com.dao.UsersDao;
import com.entity.Users;
import com.factory.DaoFactory;
import org.junit.Test;

public class UsersDaoImplTest {
    UsersDao usersDao = DaoFactory.getUsersDaoInstance();
    @Test
    public void findUser() throws Exception{
        Users user = new Users();
        user.setUsername("liulian");
        user.setPassword("5430");
        System.out.println(usersDao.findUser(user));
    }
    @Test
    public void searchUser() throws Exception{
        System.out.println(usersDao.searchUser("liulian"));
    }
    @Test
    public void searchShelf() throws Exception{
        System.out.println(usersDao.searchShelf("1"));
    }
}
