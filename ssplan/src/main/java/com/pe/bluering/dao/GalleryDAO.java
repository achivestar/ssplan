package com.pe.bluering.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.GalleryVO;
import com.pe.bluering.domain.NoticeVO;


@Repository
public class GalleryDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.galleryMapper";
	
	
	public void Insert(GalleryVO galleryvo) {
		sql.insert(namespace+".Insert",galleryvo);
	}


	public int getImgCount() {
		return sql.selectOne(namespace+".getImgCount");
	}


	
	public int getLastIdx() {
		return sql.selectOne(namespace+".getLastIdx");
	}

	
	/* Admin */
	public List<GalleryVO> getGalleryList(Criteria cri) {
		return sql.selectList(namespace+".getGalleryList",cri);
	}


	/*Client*/
	public List<GalleryVO> getGalleryList() {
		return sql.selectList(namespace+".getGalleryClientList");
	}

	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}


	public GalleryVO galleryModify(int idx) {
		return sql.selectOne(namespace+".galleryModify",idx);
	}


	public void galleryUpdate(GalleryVO galleryvo) {
		 sql.update(namespace+".galleryUpdate",galleryvo);
		
	}


	public String getDeleteFileName(Integer idx) {
		return sql.selectOne(namespace+".getDeleteFileName",idx);
	}


	public String getOriginFileName(Integer idx) {
		return sql.selectOne(namespace+".getOriginFileName",idx);
	}


	public String getSaveFileName(Integer idx) {
		return sql.selectOne(namespace+".getSaveFileName",idx);
	}


	public void portfolioDelete(int idx) {
		sql.delete(namespace+".portfolioDelete",idx);
		
	}


	public int getGalleryCount() {
		return sql.selectOne(namespace+".getGalleryCount");
	}



}
