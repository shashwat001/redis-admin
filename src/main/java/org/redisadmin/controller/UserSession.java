package org.redisadmin.controller;

import org.apache.log4j.Logger;
import org.redisadmin.model.RedisAccessModel;
import org.redisadmin.model.RedisKey;
import org.redisadmin.model.Server;
import sun.rmi.runtime.Log;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shashwat001 on 10/9/14.
 */
public class UserSession {

    public static final Logger logger = Logger.getLogger(UserSession.class);
    public static void GeneralUserLoginValidation(HttpSession session) throws NoGeneralUserLoginException {
        if(session.getAttribute("username") == null)
            throw new NoGeneralUserLoginException();
    }

    public static void AdminUserLoginValidation(HttpSession session) throws NoAdminLoginException, NoGeneralUserLoginException {
        GeneralUserLoginValidation(session);
        if(session.getAttribute("admin") == null)
            throw new NoAdminLoginException();

    }

    public static Server getServer(HttpSession session) {
        String host = (String) session.getAttribute("host");
        int port = Integer.parseInt((String) session.getAttribute("port"));
        return new Server(host,port);
    }

    public static RedisAccessModel getRedisAccessModelObject(Server server, HttpSession session) {
        logger.info("Entering function getRedisAccessModelObject");

        ServletContext servletContext = session.getServletContext();
        Map<String,RedisAccessModel> serverInstanceMap = (Map<String, RedisAccessModel>) servletContext.getAttribute("serverInstanceMap");
        if(serverInstanceMap == null){
            serverInstanceMap = new HashMap<String, RedisAccessModel>();
        }

        RedisAccessModel redisAccessModel = serverInstanceMap.get(server.toString());
        if(redisAccessModel == null){
            logger.info("New redisaccessmodel object creating");
            redisAccessModel = new RedisAccessModel(server);
            serverInstanceMap.put(server.toString(),redisAccessModel);
            servletContext.setAttribute("serverInstanceMap",serverInstanceMap);
        }
        logger.info("Leaving function getRedisAccessModelObject");
        return redisAccessModel;
    }

    public static RedisAccessModel getRedisAccessModelObject(HttpSession session) {
        Server server = getServer(session);
        return getRedisAccessModelObject(server,session);
    }
}
