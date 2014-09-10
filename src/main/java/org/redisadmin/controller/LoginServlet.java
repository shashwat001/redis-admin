package org.redisadmin.controller;

import org.apache.log4j.Logger;
import org.redisadmin.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by deepak on 20/8/14.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    public static final Logger logger = Logger.getLogger(LoginServlet.class);
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        PrintWriter out = response.getWriter();

        if(request.getSession().getAttribute("username") != null){
            out.write("true");
        }
        else {
            logger.info("New user logging in");

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            logger.info("Username :" + username + " Password : " + password);
            User loginUser = new User(username, password);

            if (loginUser.authenticate()) {
                logger.info("User valid, Name : " + loginUser.getName());
                HttpSession session = request.getSession();
                session.setAttribute("name", loginUser.getName());
                session.setAttribute("username", loginUser.getUsername());
                if(loginUser.isAdmin()){
                    session.setAttribute("admin",1);
                }
                session.setMaxInactiveInterval(60 * 60 * 6);//6 hrs

                logger.info("User logging in, redirecting to login_success.jsp");
                out.write("true");
            }
            else {
                logger.info("Invalid User");
                out.write("false");
            }
            out.close();


        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
