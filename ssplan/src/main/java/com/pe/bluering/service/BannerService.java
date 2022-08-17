package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.BannerDAO;
import com.pe.bluering.domain.BannerVO;
import com.pe.bluering.domain.Criteria;




@Service
public class BannerService {

	@Autowired
	private BannerDAO dao;
	

	public void Insert(BannerVO bannervo) {
		dao.Insert(bannervo);

	}


	public int getCount() {
		return dao.getImgCount();
	}


	public int getIdx() {
		return dao.getLastIdx();
	}

	/* Admin */
	public List<BannerVO> getBannerList(Criteria cri) {
		return dao.getBannerList(cri);
	}

	/*client*/
	public List<BannerVO> getBannerList() {
		return dao.getBannerList();
	}

	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}


	public BannerVO bannerModify(int idx) {
		return dao.bannerModify(idx);
	}


	public String getOriginFileName1(int idx) {
		return dao.getOriginFileName1(idx);
	}


	public String getSaveFileName1(int idx) {
		return dao.getSaveFileName1(idx);
	}
	
	public String getOriginFileName2(int idx) {
		return dao.getOriginFileName2(idx);
	}


	public String getSaveFileName2(int idx) {
		return dao.getSaveFileName2(idx);
	}
	
	public String getOriginFileName3(int idx) {
		return dao.getOriginFileName3(idx);
	}


	public String getSaveFileName3(int idx) {
		return dao.getSaveFileName3(idx);
	}


	public String getDeleteFileName1(int idx) {
		return dao.getDeleteFileName1(idx);
	}
	
	public String getDeleteFileName2(int idx) {
		return dao.getDeleteFileName2(idx);
	}
	
	public String getDeleteFileName3(int idx) {
		return dao.getDeleteFileName3(idx);
	}


	public void bannerUpdate(BannerVO bannervo) {
		dao.bannerUpdate(bannervo);
		
	}


	public void bannerDelete(int idx) {
		dao.bannerDelete(idx);
	}


	public int getBannerCount() {
		return dao.getBannerCount();
	}

//
//	public GalleryVO galleryModify(int idx) {
//		return dao.galleryModify(idx);
//	}
//
//
//	public void galleryUpdate(GalleryVO galleryvo) {
//		dao.galleryUpdate(galleryvo);
//	}
//
//
//	public String getDeleteFileName(Integer idx) {
//		return dao.getDeleteFileName(idx);
//	}
//
//
//	public String getOriginFileName(Integer idx) {
//		return dao.getOriginFileName(idx);
//	}
//
//
//	public String getSaveFileName(Integer idx) {
//		return dao.getSaveFileName(idx);
//	}
//
//
//	public void portfolioDelete(int idx) {
//		dao.portfolioDelete(idx);
//		
//	}



	
}
