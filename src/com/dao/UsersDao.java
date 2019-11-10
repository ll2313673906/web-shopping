package com.dao;

import com.entity.Users;

import java.util.HashMap;
import java.util.List;

public interface UsersDao {
    public boolean findUser(Users user) throws Exception;
    public List<HashMap> searchUser(String username ) throws Exception;
    public List<HashMap> searchShelf(String username) throws Exception;
}
