package org.redisadmin.controller;

import java.util.List;

/**
 * Created by shashwat001 on 26/8/14.
 */
public class RedisKeyState {

    public String cursor;
    public String type;
    public int ignorableCount;
    public List<String> keyList = null;
    public static final int MaxKeyListCount = 11;

    public RedisKeyState(String cursor, int count, String type) {
        this.cursor = cursor;
        this.type = type;
        this.ignorableCount = count;
    }

    public RedisKeyState() {

    }
}
