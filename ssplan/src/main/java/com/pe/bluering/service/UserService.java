package com.pe.bluering.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.UserDAO;
import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;

@Service
public class UserService {
	
	@Autowired
	private UserDAO dao;
	
	public UserVO login(LoginDTO dto) {
		return dao.login(dto);
	}

	public String confirmPw(String upw) {
		return dao.confirmPw(upw);
	}

	public void changePw(String string) {
		 dao.changePw(string);
	}

}
