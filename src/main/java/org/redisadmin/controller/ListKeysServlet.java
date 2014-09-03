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
import java.util.List;

/**
 * Created by deepak on 25/8/14.
 */
public class ListKeysServlet extends HttpServlet {
    private final Logger logger = Logger.getLogger(ListKeysServlet.class);
    List<String> stringList;
    List<String> hashList;
    List<String> setList;
    List<String> listList;
    List<String> zsetList;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("Entering ListKeysServlet");
        PrintWriter out = response.getWriter();
        Cookie[] cookies = null;
        cookies = request.getCookies();

        //cookies 0:jsessiodID 1:host 2:port
        String host = cookies[1].getValue();
        int port = Integer.parseInt(cookies[2].getValue());
        logger.info("Host:"+host+"  Port: "+port);


        String cursor = request.getParameter("cursor");
        int count = Integer.parseInt(request.getParameter("ignorableCount"));
        String keyType = request.getParameter("type");
        RedisKeyState currentRedisKeyState = new RedisKeyState(cursor,count,keyType);

        RedisAccessModel redisAccessModel = new RedisAccessModel(host,port);
        RedisKeyState nextRedisKeyState = redisAccessModel.getNextKeyState(currentRedisKeyState);
        redisAccessModel.close();

        String jsonRedisKeys = new Gson().toJson(nextRedisKeyState);
        out.write(jsonRedisKeys);
        out.close();
        logger.info("Leaving ListKeysServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
