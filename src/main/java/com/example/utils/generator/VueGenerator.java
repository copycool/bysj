package com.example.utils.generator;

import cn.hutool.core.util.StrUtil;

import java.util.HashMap;
import java.util.Map;

/**
 * @date 2021/3/26 17:02
 * @description vue页面生成器
 */
public class VueGenerator {
    public static void main(String[] args) {

//        String vueTemplate = FileUtil.readUtf8String("template/vue.txt");
        String str = "{name}, ${aaa} {value}";
        Map<String, String> map = new HashMap<>();
        map.put("name", "hello");
        map.put("value", "world");
        String format = StrUtil.format(str, map);
        System.out.println(format);
    }
}
