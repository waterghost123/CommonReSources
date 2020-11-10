package com.itcase.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderUtils {

    private static BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
    public static String encoderPassword(String password){
        return  bCryptPasswordEncoder.encode(password);
    }
     public  static  void  main(String[] args){
        String password="159753";
        String pwd=encoderPassword(password);
         System.out.println(pwd);
     }
}
