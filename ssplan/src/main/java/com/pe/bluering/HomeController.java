package com.pe.bluering;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
import com.pe.bluering.domain.BannerVO;
import com.pe.bluering.domain.ContactVO;
import com.pe.bluering.domain.GalleryVO;
import com.pe.bluering.domain.NoticeVO;
import com.pe.bluering.domain.PageMaker;
import com.pe.bluering.service.BannerService;
import com.pe.bluering.service.ContactService;
import com.pe.bluering.service.GalleryService;
import com.pe.bluering.service.NoticeService;

import jdk.internal.org.jline.utils.Log;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService noticeservice;
	
	@Autowired
	private GalleryService galleryservice;
	
	@Autowired
	private BannerService bannerservice;
	
	@Autowired
	private ContactService contactservice;

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		List<NoticeVO> noticeList = noticeservice.getNoticeList();
		List<GalleryVO> galleryList = galleryservice.getGalleryList();
		List<BannerVO> bannerList = bannerservice.getBannerList();
		 
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("galleryList", galleryList);
		model.addAttribute("bannerList", bannerList);
		
		return "index";
	}
	
	
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(NoticeVO noticevo, @RequestParam("idx") int idx, Locale locale, Model model) {
		
		 noticevo = noticeservice.noticeModify(idx);
		 
		 List<NoticeVO> isPrev = noticeservice.getPrev(idx);
		 List<NoticeVO> isNext = noticeservice.getNext(idx);
		
	
		
		 model.addAttribute("isPrev",isPrev);
		 model.addAttribute("isNext",isNext);
		 
		 model.addAttribute("noticevo", noticevo);
		 
		 
		 
		 return "noticeDetail";
	}
	
	
	@RequestMapping(value = "/bannerDetail", method = RequestMethod.GET)
	public String bannerDetail(BannerVO bannervo, Locale locale, Model model, @RequestParam("idx") int idx) {
	
		  bannervo = bannerservice.bannerModify(idx);
		  model.addAttribute("bannervo", bannervo);
		  
		  return "bannerDetail";
	}
	
	
	
	
	@RequestMapping(value = "/contactRegist", method = RequestMethod.POST)
	@ResponseBody
	public String contactRegist(Locale locale, Model model, ContactVO contactvo) {
		//JsonObject jsonObject = new JsonObject();
		String result = "";
		if(contactservice.Insert(contactvo) == 1) {
			//logger.info("contactRegist result : "+contactservice.Insert(contactvo));
			//jsonObject.addProperty("responseCode", "success");
			result = "success";
		}else {
			result = "error";
			//logger.info("contactRegist result : "+contactservice.Insert(contactvo));
		//	jsonObject.addProperty("responseCode", "error");
		}
	//	String a = jsonObject.toString();
		//System.out.println("a" + a);
		
		System.out.println("result : " + result);
		return result;
	
		//return "redirect:/";
	}
	
}
