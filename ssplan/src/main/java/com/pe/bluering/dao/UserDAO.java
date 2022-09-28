package com.pe.bluering.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.userMapper";
	
	
	public UserVO login(LoginDTO dto) {
		
		return sql.selectOne(namespace+".login",dto);
	}


	public String confirmPw(String upw) {
		return sql.selectOne(namespace+".confirmPw",upw);
	}


	public void changePw(String cpw) {
		sql.update(namespace+".changePw",cpw);
	}
}
