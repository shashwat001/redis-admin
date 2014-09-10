package org.redisadmin.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.redisadmin.model.RedisAccessModel;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by shashwat001 on 5/9/14.
 */
public class GetInfoServlet extends HttpServlet {

    public static final Logger logger = Logger.getLogger(GetInfoServlet.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Cookie[] cookies = null;
        cookies = request.getCookies();

        String host = cookies[1].getValue();
        int port = Integer.parseInt(cookies[2].getValue());

        RedisAccessModel redisAccessModel = new RedisAccessModel(host,port);

        Map<String, Map<String, String>> info = redisAccessModel.getInfo();

        String outputJSON = new Gson().toJson(info);
        logger.info(outputJSON);
        out.write(outputJSON);

        out.close();


    }
}
