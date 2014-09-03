package org.redisadmin.model;

/**
 * Created by shashwat001 on 2/9/14.
 */
public class RedisKey<T> {
    public String key;
    public T value;

    public RedisKey(String key, T value) {
        this.key = key;
        this.value = value;
    }
}
