package org.redisadmin.controller;

import org.redisadmin.model.User;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by deepak on 20/8/14.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User loginUser = new User(email,password);

        try {
            if(loginUser.validate()){
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("login_success.jsp");
                requestDispatcher.forward(request,response);
            }
            else {
                response.sendRedirect("index.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
