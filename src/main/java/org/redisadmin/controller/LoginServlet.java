package org.redisadmin.controller;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by deepak on 20/8/14.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("email");
        String password = request.getParameter("password");
        LoginValidation loginValidation = new LoginValidation();
        if(loginValidation.loginValidate(username,password)){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login_success.jsp");
            requestDispatcher.forward(request,response);
        }
        else {
            response.sendRedirect("index.jsp");
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
