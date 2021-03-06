package cn.kgc.util;

import java.util.Random;

/**
 * 生产salt的静态方法
 */
public class SaltUtils {
    public static String getSalt(int n){
        char[] chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567890!@#$%^&*()".toCharArray();
        StringBuilder sb=new StringBuilder();
        for(int i=0;i<n;i++){
           char aChar= chars[new Random().nextInt(chars.length)];
           sb.append(aChar);
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String salt=getSalt(4);
        System.out.println(salt);
    }
}
