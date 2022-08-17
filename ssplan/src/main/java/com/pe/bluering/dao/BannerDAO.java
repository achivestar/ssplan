package com.pe.bluering.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.BannerVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.GalleryVO;
import com.pe.bluering.domain.NoticeVO;


@Repository
public class BannerDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.bannerMapper";
	
	
	public void Insert(BannerVO banneryvo) {
		sql.insert(namespace+".Insert",banneryvo);
	}


	public int getImgCount() {
		return sql.selectOne(namespace+".getImgCount");
	}


	
	public int getLastIdx() {
		return sql.selectOne(namespace+".getLastIdx");
	}

	
	/* Admin */
	public List<BannerVO> getBannerList(Criteria cri) {
		return sql.selectList(namespace+".getBannerList",cri);
	}


	/*Client*/
	public List<BannerVO> getBannerList() {
		return sql.selectList(namespace+".getBannerClientList");
	}

	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}


	public BannerVO bannerModify(int idx) {
		return sql.selectOne(namespace+".bannerModify",idx);
	}


	public String getOriginFileName1(int idx) {
		return sql.selectOne(namespace+".getOriginFileName1",idx);
	}


	public String getSaveFileName1(int idx) {
		return sql.selectOne(namespace+".getSaveFileName1",idx);
	}
	
	public String getOriginFileName2(int idx) {
		return sql.selectOne(namespace+".getOriginFileName2",idx);
	}


	public String getSaveFileName2(int idx) {
		return sql.selectOne(namespace+".getSaveFileName2",idx);
	}
	
	public String getOriginFileName3(int idx) {
		return sql.selectOne(namespace+".getOriginFileName3",idx);
	}


	public String getSaveFileName3(int idx) {
		return sql.selectOne(namespace+".getSaveFileName3",idx);
	}


	public String getDeleteFileName1(int idx) {
		return sql.selectOne(namespace+".getDeleteFileName1",idx);
	}
	
	public String getDeleteFileName2(int idx) {
		return sql.selectOne(namespace+".getDeleteFileName2",idx);
	}
	
	public String getDeleteFileName3(int idx) {
		return sql.selectOne(namespace+".getDeleteFileName3",idx);
	}


	public void bannerUpdate(BannerVO bannervo) {
		 sql.update(namespace+".bannerUpdate",bannervo);
	}


	public void bannerDelete(int idx) {
		sql.update(namespace+".bannerDelete",idx);
	}


	public int getBannerCount() {
		return sql.selectOne(namespace+".getBannerCount");
	}

//
//	public GalleryVO galleryModify(int idx) {
//		return sql.selectOne(namespace+".galleryModify",idx);
//	}
//
//
//	public void galleryUpdate(GalleryVO galleryvo) {
//		 sql.update(namespace+".galleryUpdate",galleryvo);
//		
//	}
//
//
//	public String getDeleteFileName(Integer idx) {
//		return sql.selectOne(namespace+".getDeleteFileName",idx);
//	}
//
//
//	public String getOriginFileName(Integer idx) {
//		return sql.selectOne(namespace+".getOriginFileName",idx);
//	}
//
//
//	public String getSaveFileName(Integer idx) {
//		return sql.selectOne(namespace+".getSaveFileName",idx);
//	}
//
//
//	public void portfolioDelete(int idx) {
//		sql.delete(namespace+".portfolioDelete",idx);
//		
//	}



}
