package org.redisadmin.controller;

import com.google.gson.Gson;
import org.redisadmin.model.RedisAccessModel;
import org.redisadmin.model.RedisKey;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by shashwat001 on 4/9/14.
 */
public class SearchKeyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        RedisAccessModel redisAccessModel = UserSession.getRedisAccessModelObject(request.getSession());

        String key = request.getParameter("key");
        List<RedisKey> resultKeys = new LinkedList<RedisKey>();
        if(request.getPathInfo().equals("/exact")){
            resultKeys = redisAccessModel.getExactMatchingKeys(key);
        }
        else{
            resultKeys = redisAccessModel.getRegexMatchingKeys(key);
        }
        redisAccessModel.close();
        out.write(new Gson().toJson(resultKeys));
        out.close();
    }
}
