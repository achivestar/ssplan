package com.pe.bluering.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NoticeVO;


@Repository
public class NoticeDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.noticeMapper";
	
	
	public void Insert(NoticeVO noticevo) {
		sql.insert(namespace+".Insert",noticevo);
	}


	public int getImgCount() {
		return sql.selectOne(namespace+".getImgCount");
	}


	
	public int getLastIdx() {
		return sql.selectOne(namespace+".getLastIdx");
	}

	
	/* Admin */
	public List<NoticeVO> getNoticeList(Criteria cri) {
		return sql.selectList(namespace+".getNoticeList",cri);
	}


	/*Client*/
	public List<NoticeVO> getNoticeList() {
		return sql.selectList(namespace+".getNoticeClientList");
	}

	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}


	public NoticeVO noticeModify(int idx) {
		return sql.selectOne(namespace+".noticeModify",idx);
	}


	public void noticeUpdate(NoticeVO noticevo) {
		 sql.update(namespace+".noticeUpdate",noticevo);
	}


	public void noticeThumbUpdate(NoticeVO noticevo) {
		 sql.update(namespace+".noticeThumbUpdate",noticevo);
		
	}


	public void noticeDelete(int idx) {
		sql.delete(namespace+".noticeDelete",idx);
	}


	/* 이전글 */
	public List<NoticeVO> getPrev(int idx) {
		return sql.selectList(namespace+".getPrev",idx);
	}

	/* 다음글 */
	public List<NoticeVO> getNext(int idx) {
		return sql.selectList(namespace+".getNext",idx);
	}


	public int getNoticeCount() {
		return sql.selectOne(namespace+".getNoticeCount");
	}


}
