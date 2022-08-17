package com.pe.bluering.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.ContactVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NoticeVO;


@Repository
public class ContactDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.contactMapper";
	
	
	public int Insert(ContactVO contactvo) {
		return sql.insert(namespace+".Insert",contactvo);
	}


	public List<ContactVO> getContactList(Criteria cri) {
		return sql.selectList(namespace+".getContactList",cri);
	}


	public int listCountCriteria(Criteria cri) {

		return sql.selectOne(namespace+".countPaging",cri);
		
	}


	public int getContactCount() {
		return sql.selectOne(namespace+".getContactCount");
	}


	public ContactVO getContectResponse(int idx) {
		return sql.selectOne(namespace+".getContectResponse",idx);
	}


	public void updateContact(ContactVO contactvo) {
		sql.update(namespace+".updateContact",contactvo);
	}


	

}
