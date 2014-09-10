package org.redisadmin.controller;

import org.redisadmin.model.RedisAccessModel;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by shashwat001 on 5/9/14.
 */
public class DeleteKeyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Cookie[] cookies = null;
        cookies = request.getCookies();

        String host = cookies[1].getValue();
        int port = Integer.parseInt(cookies[2].getValue());

        String key = request.getParameter("key");
        RedisAccessModel redisAccessModel = new RedisAccessModel(host,port);

        redisAccessModel.deleteKey(key);

    }
}
