package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.NoticeDAO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NoticeVO;



@Service
public class NoticeService {

	@Autowired
	private NoticeDAO dao;
	

	public void Insert(NoticeVO noticevo) {
		dao.Insert(noticevo);

	}


	public int getImgCount() {
		return dao.getImgCount();
	}


	public int getLastIdx() {
		return dao.getLastIdx();
	}

	/* Admin */
	public List<NoticeVO> getNoticeList(Criteria cri) {
		return dao.getNoticeList(cri);
	}

	/*client*/
	public List<NoticeVO> getNoticeList() {
		return dao.getNoticeList();
	}

	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}


	public NoticeVO noticeModify(int idx) {
		return dao.noticeModify(idx);
	}


	public void noticeUpdate(NoticeVO noticevo) {
		dao.noticeUpdate(noticevo);
		
	}


	public void noticeThumbUpdate(NoticeVO noticevo) {
		dao.noticeThumbUpdate(noticevo);
	}


	public void noticeDelete(int idx) {
		dao.noticeDelete(idx);
	}


	/* 이전글 */
	public List<NoticeVO> getPrev(int idx) {
		return dao.getPrev(idx);
	}


	/* 다음글 */
	public List<NoticeVO> getNext(int idx) {
		return dao.getNext(idx);
	}


	public int getNoticeCount() {
		return dao.getNoticeCount();
	}


	
}
