package com.servlet;

import com.dao.UsersDao;
import com.entity.Users;
import com.factory.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String flag=request.getParameter("flag");
        HttpSession hs = request.getSession(true);
        UsersDao usersDao = DaoFactory.getUsersDaoInstance();

        if (flag.equals("login")){
            String verify = request.getParameter("verify");
            String verifyCode = String.valueOf(hs.getAttribute("verifyCode"));
            String account = request.getParameter("name");
            String password = request.getParameter("password");
            hs.setAttribute("name",account);
            Users user = new Users();
            user.setUsername(account);
            user.setPassword(password);
            if (verify.equals(verifyCode)){
                try {
                    if (usersDao.findUser(user)){
                        request.getRequestDispatcher("main.jsp").forward(request,response);
                    }else{
                        request.getRequestDispatcher("login.jsp?account||password==false").forward(request,response);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }else{
                request.getRequestDispatcher("login.jsp?verifyCode==false").forward(request,response);
            }
        }
        if (flag.equals("del_shelf")){
//            String goodsId = String.valueOf(request.getAttribute("goodsId"));
            String name = (String) hs.getAttribute("name");
            try {
//                DaoFactory.getGoodsDaoInstance().deleteShelf(name,goodsId);
//                request.getRequestDispatcher("person_shelf.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
