package org.redisadmin.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * Created by shashwat001 on 9/9/14.
 */
public class LogoutServlet extends HttpServlet {

    public static final Logger logger = Logger.getLogger(String.valueOf(LogoutServlet.class));
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("Entering function doGet");
        HttpSession session = request.getSession();
        session.invalidate();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
        logger.info("Leaving function doGet");
    }
}
