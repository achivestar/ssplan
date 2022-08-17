package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.ContactDAO;
import com.pe.bluering.domain.ContactVO;
import com.pe.bluering.domain.Criteria;



@Service
public class ContactService {

	@Autowired
	private ContactDAO dao;
	

	public int Insert(ContactVO contactvo) {
	
		return dao.Insert(contactvo);

	}


	public List<ContactVO> getContactList(Criteria cri) {
		return dao.getContactList(cri);
	}


	public int listCountCriteria(Criteria cri) {
		return dao.listCountCriteria(cri);
	}


	public int getContactCount() {
		return dao.getContactCount();
	}


	public ContactVO getContectResponse(int idx) {
		return dao.getContectResponse(idx);
	}


	public void updateContact(ContactVO contactvo) {
		 dao.updateContact(contactvo);
	}



	
}
