package com.pe.bluering;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator {

	PasswordAuthentication account;
	 
    public MyAuthentication(){
        String id = "kkameun@naver.com";
        String pw = "qkagksmf12@#";
        account = new PasswordAuthentication(id, pw);
    }
 
    public PasswordAuthentication getPasswordAuthentication(){
        return account;
    }
}
