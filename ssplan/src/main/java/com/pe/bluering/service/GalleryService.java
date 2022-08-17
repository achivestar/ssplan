package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.GalleryDAO;
import com.pe.bluering.dao.NoticeDAO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.GalleryVO;
import com.pe.bluering.domain.NoticeVO;



@Service
public class GalleryService {

	@Autowired
	private GalleryDAO dao;
	

	public void Insert(GalleryVO galleryvo) {
		dao.Insert(galleryvo);

	}


	public int getCount() {
		return dao.getImgCount();
	}


	public int getIdx() {
		return dao.getLastIdx();
	}

	/* Admin */
	public List<GalleryVO> getGalleryList(Criteria cri) {
		return dao.getGalleryList(cri);
	}

	/*client*/
	public List<GalleryVO> getGalleryList() {
		return dao.getGalleryList();
	}

	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}


	public GalleryVO galleryModify(int idx) {
		return dao.galleryModify(idx);
	}


	public void galleryUpdate(GalleryVO galleryvo) {
		dao.galleryUpdate(galleryvo);
	}


	public String getDeleteFileName(Integer idx) {
		return dao.getDeleteFileName(idx);
	}


	public String getOriginFileName(Integer idx) {
		return dao.getOriginFileName(idx);
	}


	public String getSaveFileName(Integer idx) {
		return dao.getSaveFileName(idx);
	}


	public void portfolioDelete(int idx) {
		dao.portfolioDelete(idx);
		
	}


	public int getGalleryCount() {
		return dao.getGalleryCount();
	}



	
}
