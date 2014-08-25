package org.redisadmin.view;

import org.redisadmin.controller.ListKeys;

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Cookie[] cookies = null;
        cookies = request.getCookies();
        String host = cookies[0].getValue();
        int port = Integer.parseInt(cookies[1].getValue());
        List<String> stringKeys = new ListKeys().listStringKeys(host, port);
        for(String key : stringKeys){
            out.println(key);
        }
        out.close();
    }
}
