package com.pe.bluering;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pe.bluering.domain.ContactVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.GalleryVO;
import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.NoticeVO;
import com.pe.bluering.domain.PageMaker;
import com.pe.bluering.domain.UserVO;
import com.pe.bluering.service.ContactService;
import com.pe.bluering.service.GalleryService;
import com.pe.bluering.service.NoticeService;
import com.pe.bluering.service.UserService;



@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private NoticeService noticeservice;
	
	@Autowired
	private GalleryService galleryservice;
	
	
	@Autowired
	private ContactService contactservice;
	
	@Autowired
	private UserService userservice;
	
	
	

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		 System.out.println("admin page start");
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		 List<NoticeVO> noticeList = noticeservice.getNoticeList();
		 List<GalleryVO> galleryList = galleryservice.getGalleryList();
		// List<BannerVO> bannerList = bannerservice.getBannerList();
		 
		 int noticeCount =  noticeservice.getNoticeCount();
		 model.addAttribute("noticeCount",noticeCount);
		 
		 int galleryCount =  galleryservice.getGalleryCount();
		 model.addAttribute("galleryCount",galleryCount);
		 
		// int bannerCount =  bannerservice.getBannerCount();
		// model.addAttribute("bannerCount",bannerCount);
		 model.addAttribute("noticeList", noticeList);
		 model.addAttribute("galleryList", galleryList);
		// model.addAttribute("bannerList", bannerList);
		 
		 
		 System.out.println("admin page end");
		 
		 
		 
		 return "/admin/login";
		 
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET) 
	public String logout(HttpSession session) {
		
		Object obj = session.getAttribute("login");
		
		if(obj!=null) {
			session.removeAttribute("login");
			session.invalidate();

		}
		
		System.out.println("log out");
		return "redirect:/admin";
	}
	
	@RequestMapping(value="/loginPost", method=RequestMethod.POST) 
	public void loginPost(LoginDTO dto, HttpSession session, Model model) {
		
		System.out.println("login process");
		System.out.println("Dto > " + dto);
		UserVO vo = userservice.login(dto);
		
		if(vo == null) {
			return;
		}
		
		model.addAttribute("userVO",vo);
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		return "/admin/login";
	}
	
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET) 
	public String index( Model model) {
		System.out.println("admin page start");
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		 List<NoticeVO> noticeList = noticeservice.getNoticeList();
		 List<GalleryVO> galleryList = galleryservice.getGalleryList();
		// List<BannerVO> bannerList = bannerservice.getBannerList();
		 
		 int noticeCount =  noticeservice.getNoticeCount();
		 model.addAttribute("noticeCount",noticeCount);
		 
		 int galleryCount =  galleryservice.getGalleryCount();
		 model.addAttribute("galleryCount",galleryCount);
		 
		// int bannerCount =  bannerservice.getBannerCount();
		// model.addAttribute("bannerCount",bannerCount);
		 model.addAttribute("noticeList", noticeList);
		 model.addAttribute("galleryList", galleryList);
		// model.addAttribute("bannerList", bannerList);
		 
		 
		 System.out.println("admin page end");
		 
		 
		 
		return "/admin/index";
	}
	
	
	

	@RequestMapping(value="/changePw", method=RequestMethod.POST) 
	@ResponseBody
	public String changePw( Model model,UserVO uservo) {
		
		String result = "";
		String pwd = userservice.confirmPw(uservo.getUpw());
		//System.out.println("changePw vo : " + pwd);
		
		if(pwd == null) {
			result = "fail";
		}else if(pwd.equals(uservo.getUpw())){
			//System.out.print("uservo.getCpw:"+uservo.getCpw());
			userservice.changePw(uservo.getCpw());
			result = "success";
		}
		
		
		return result;
	}
	
	
	
	/* 공지사항 */
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model,Criteria cri) {

		 List<NoticeVO> noticeList = noticeservice.getNoticeList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(noticeservice.listCountCriteria(cri));
		 
		 model.addAttribute("noticeList", noticeList);
		 model.addAttribute("pageMaker",pageMaker);
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		return "/admin/notice";
	}
	
	@RequestMapping(value = "/noticeRegist", method = RequestMethod.GET)
	public String noticeRegistGet(Locale locale, Model model) {

		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		return "/admin/noticeRegist";
	}
	
	@RequestMapping(value = "/noticeRegist", method = RequestMethod.POST)
	public String noticeRegistPost(Locale locale, Model model, NoticeVO noticevo) {

		noticeservice.Insert(noticevo);
		
		return "redirect:/admin/notice";
	}
	
	
	
	@RequestMapping(value = {"/noticeModify"}, method = {RequestMethod.GET})
	  public String noticeModify(NoticeVO noticevo, @RequestParam("idx") int idx, Model model) {
	   
		 noticevo = noticeservice.noticeModify(idx);
		 model.addAttribute("noticevo", noticevo);

		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
	     return "/admin/noticeModify";
	}
	
	
	
	@RequestMapping(value = {"/noticeUpdate"}, method = {RequestMethod.POST})
	  public String noticeUpdate(NoticeVO noticevo, Model model, HttpServletRequest request) {
	   
		noticeservice.noticeUpdate(noticevo);

	    return "redirect:/admin/notice";
	  }
	

	
	@RequestMapping(value = {"/noticeDelete"}, method = {RequestMethod.POST})
	  public String noticeDelete(NoticeVO noticevo, Model model, HttpSession session, @RequestParam("didx") int idx, HttpServletRequest request, @RequestParam(value = "num", defaultValue = "1") int num) {
	   
		 
		 String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		 String fileRoot = contextRoot+"resources/uploadNoticeImageFile/"+idx+"/";
		 deleteFile(fileRoot);
		 
		 noticeservice.noticeDelete(idx);
		 return "redirect:/admin/notice";
	  }
	
	
	
	/* 포트폴리오 */

	@RequestMapping(value = "/portfolio", method = RequestMethod.GET)
	public String port(Locale locale, Model model,Criteria cri) {

		 List<GalleryVO> galleryList = galleryservice.getGalleryList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(galleryservice.listCountCriteria(cri));
		 
		 model.addAttribute("galleryList", galleryList);
		 model.addAttribute("pageMaker",pageMaker);
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		return "/admin/portfolio";
		
		
	}
	
	
	@RequestMapping(value = "/portfolioRegist", method = RequestMethod.GET)
	public String portfolioRegist(Locale locale, Model model) {

		int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		return "/admin/portfolioRegist";
	}
	
	
	@RequestMapping(value="/portfolioRegist", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> portfolioRegist(
			@RequestParam("thumb") MultipartFile multipartFile
			,GalleryVO galleryvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/uploadGalleryImageFile/";
	    String UPLOAD_PATH = root_path+attach_path;
	
		int idx = 0;
	    if(galleryservice.getCount()==0) {

	    	idx = 1;
	    }else {
	    	 idx = galleryservice.getIdx()+1;
	    	 System.out.println(galleryservice.getIdx());
	   
	    }
	    
		
	    File Folder = new File(UPLOAD_PATH+"/"+idx);
	 	if (!Folder.exists()) {
				try{
				    Folder.mkdir(); 
				    
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		}
	 	
	    fileRoot = contextRoot + "resources/uploadGalleryImageFile/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);
	    File Folders = new File(fileRoot);

		
		if (!Folders.exists()) {
			try{
			    Folders.mkdir(); 
			    
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}        
	     }
		
		
		
		try {

			System.out.println("fileRoot"+fileRoot);
			
			String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
			String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
			
			File targetFile = new File(fileRoot + savedFileName);	
			try {
				InputStream fileStream = multipartFile.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
				
				//썸네일 만들기 
				String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
				File oFile = new File(oPath);
				
				int index = oPath.lastIndexOf(".");
				String ext = oPath.substring(index + 1); // 파일 확장자
				
				
				String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
				File thumbFolder = new File(thumbPath);
				
				if (!thumbFolder.exists()) {
					try{
						thumbFolder.mkdir(); //폴더 생성합니다.
					    System.out.println("create Folder");
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			    }else {
			        	 
					System.out.println("aleady create Folder");
				}
				
				
				
				String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
				System.out.println("썸네일저장 경로 : " + tPath);
				File tFile = new File(tPath);
				
				double ratio = 4; // 이미지 축소 비율
				
				//썸네일 생성 시작
				BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
				int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
				int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이


				BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
				Graphics2D graphic = tImage.createGraphics();
				Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
				graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
				graphic.dispose(); // 리소스를 모두 해제

				
				
				ImageIO.write(tImage, ext, tFile);
				
				//썸네일 생성 종료
				
			} catch (Exception e) {
				//파일삭제
				FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
				e.printStackTrace();
	
			}
			
			galleryvo.setOriginalFileName(originalFileName);
			galleryvo.setSaveFileName(savedFileName);
			galleryvo.setSavedFileName("/resources/uploadGalleryImageFile/"+idx+"/"+savedFileName);
			galleryvo.setThumburl("/resources/uploadGalleryImageFile/"+idx+"/thumb/t-"+savedFileName);

			
			galleryservice.Insert(galleryvo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
			
				
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	@RequestMapping(value = {"/portfolioModify"}, method = {RequestMethod.GET})
	  public String portfolioModify(GalleryVO galleryvo, @RequestParam("idx") int idx, Model model) {
	   
		galleryvo = galleryservice.galleryModify(idx);
		 model.addAttribute("galleryvo", galleryvo);

		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
	     return "/admin/portfolioModify";
	}
	
	
	
	@RequestMapping(value="/portfolioUpdate", method=RequestMethod.POST) 
	public String portfolioUpdate(GalleryVO galleryvo,Model model,MultipartFile thumb,HttpServletRequest request) {
		
		String delFileName = getDeleteFileName(galleryvo.getIdx());
		System.out.println("getDeleteFileName : " + delFileName);
		int idx = galleryvo.getIdx();
		
	
		
		if(thumb.getOriginalFilename().equals("")) {
			
			String getSavedFileName = getSaveFileName(galleryvo.getIdx());
			String getOriginFileName = getOriginFileName(galleryvo.getIdx());
			galleryvo.setSavedFileName(getSavedFileName);
			galleryvo.setOriginalFileName(getOriginFileName);
			galleryvo.setSaveFileName(galleryvo.getSaveFileName());
			galleryvo.setThumburl(galleryvo.getThumburl());
			galleryservice.galleryUpdate(galleryvo);
			
		}else {

			saveUpdateFile(thumb,request,delFileName,idx);
			
			String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
			String fileRoot = contextRoot + "resources/uploadGalleryImageFile/"+idx+"/";
		    System.out.println("fileRoot : " +fileRoot);
		    File Folders = new File(fileRoot);
		    if (!Folders.exists()) {
				try{
				    Folders.mkdir(); 
				    
			     } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		     }

			try {

				System.out.println("fileRoot"+fileRoot);
				
				String originalFileName = thumb.getOriginalFilename();	//오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
				
				File targetFile = new File(fileRoot + savedFileName);	
				try {
					InputStream fileStream = thumb.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
					
					//썸네일 만들기 
					String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
					File oFile = new File(oPath);
					
					int index = oPath.lastIndexOf(".");
					String ext = oPath.substring(index + 1); // 파일 확장자
					
					
					String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
					File thumbFolder = new File(thumbPath);
					
					if (!thumbFolder.exists()) {
						try{
							thumbFolder.mkdir(); //폴더 생성합니다.
						    System.out.println("create Folder");
					        } 
					        catch(Exception e){
						    e.getStackTrace();
						}        
				    }else {
				        	 
						System.out.println("aleady create Folder");
					}
					
					
					
					String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
					System.out.println("썸네일저장 경로 : " + tPath);
					File tFile = new File(tPath);
					
					double ratio = 4; // 이미지 축소 비율
					
					//썸네일 생성 시작
					BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
					int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
					int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이


					BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
					Graphics2D graphic = tImage.createGraphics();
					Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
					graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
					graphic.dispose(); // 리소스를 모두 해제

					ImageIO.write(tImage, ext, tFile);
					
					//썸네일 생성 종료
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
		
				}
				
				
				galleryvo.setSavedFileName("/resources/uploadGalleryImageFile/"+idx+"/"+savedFileName);
				galleryvo.setOriginalFileName(thumb.getOriginalFilename());
				galleryvo.setSaveFileName(savedFileName);
				galleryvo.setThumburl("/resources/uploadGalleryImageFile/"+idx+"/thumb/t-"+savedFileName);
				galleryservice.galleryUpdate(galleryvo);
	
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
			
		}

		
		return "redirect:/admin/portfolio";
	}
	
	
	
	
	
	@RequestMapping(value = {"/portfolioDelete"}, method = {RequestMethod.POST})
	  public String portfolioDelete(GalleryVO galleryvo, Model model, HttpSession session, @RequestParam("didx") int idx, HttpServletRequest request, @RequestParam(value = "num", defaultValue = "1") int num) {
	   
		 
		 String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		 String fileRoot = contextRoot+"resources/uploadGalleryImageFile/"+idx+"/";
		 deleteFile(fileRoot);
		 
		 galleryservice.portfolioDelete(idx);
		 return "redirect:/admin/portfolio";
	  }
	
	

	
	/* 롤링 배너 */
	
//	@RequestMapping(value = "/banner", method = RequestMethod.GET)
//	public String banner(Locale locale, Model model, Criteria cri) {
//
//
//		 List<BannerVO> bannerList = bannerservice.getBannerList(cri);
//		 
//		 PageMaker pageMaker = new PageMaker();
//		 pageMaker.setCri(cri);
//		 pageMaker.setTotalCount(bannerservice.listCountCriteria(cri));
//		 
//		 model.addAttribute("bannerList", bannerList);
//		 model.addAttribute("pageMaker",pageMaker);
//		 
//		 int contactCount =  contactservice.getContactCount();
//		 model.addAttribute("contactCount",contactCount );
//
//		return "/admin/banner";
//	}
//	
//	
//	@RequestMapping(value = "/bannerRegist", method = RequestMethod.GET)
//	public String bannerRegist(Locale locale, Model model) {
//
//		 int contactCount =  contactservice.getContactCount();
//		 model.addAttribute("contactCount",contactCount );
//		 
//		return "/admin/bannerRegist";
//	}
//	
//	
//	
//	
	
//	@RequestMapping(value="/bannerRegist", method=RequestMethod.POST) 
//	@ResponseBody
//	public ResponseEntity<String> bannerRegist(
//			@RequestParam("thumb1") MultipartFile multipartFile1,
//			@RequestParam("thumb2") MultipartFile multipartFile2,
//			@RequestParam("thumb3") MultipartFile multipartFile3,
//			BannerVO bannervo, HttpServletRequest request,HttpServletResponse response) {
//		
//		ResponseEntity<String> entity = null;
//		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
//		String fileRoot;
//		
//		String root_path = request.getSession().getServletContext().getRealPath("/");  
//	    String attach_path = "resources/uploadBannerImageFile/";
//	    String UPLOAD_PATH = root_path+attach_path;
//	
//		int idx = 0;
//	    if(bannerservice.getCount()==0) {
//
//	    	idx = 1;
//	    }else {
//	    	 idx = bannerservice.getIdx()+1;
//	    	 System.out.println(bannerservice.getIdx());
//	    }
//	    
//		
//	    File Folder = new File(UPLOAD_PATH+"/"+idx);
//	 	if (!Folder.exists()) {
//				try{
//				    Folder.mkdir(); 
//				    
//			        } 
//			        catch(Exception e){
//				    e.getStackTrace();
//				}        
//		}
//	 	
//	    fileRoot = contextRoot + "resources/uploadBannerImageFile/"+idx+"/";
//	    System.out.println("fileRoot : " +fileRoot);
//	    File Folders = new File(fileRoot);
//
//		
//		if (!Folders.exists()) {
//			try{
//			    Folders.mkdir(); 
//			    
//		        } 
//		        catch(Exception e){
//			    e.getStackTrace();
//			}        
//	     }
//		
//		
//		
//		try {
//
//			System.out.println("fileRoot"+fileRoot);
//			
//			String originalFileName1 = multipartFile1.getOriginalFilename();	//오리지날 파일명
//			String extension1 = originalFileName1.substring(originalFileName1.lastIndexOf("."));	//파일 확장자
//			String savedFileName1 = UUID.randomUUID() + extension1;	//저장될 파일 명
//			
//			String originalFileName2 = multipartFile2.getOriginalFilename();	//오리지날 파일명
//			String extension2 = originalFileName2.substring(originalFileName2.lastIndexOf("."));	//파일 확장자
//			String savedFileName2 = UUID.randomUUID() + extension2;	//저장될 파일 명
//			
//			String originalFileName3 = multipartFile3.getOriginalFilename();	//오리지날 파일명
//			String extension3 = originalFileName3.substring(originalFileName3.lastIndexOf("."));	//파일 확장자
//			String savedFileName3 = UUID.randomUUID() + extension3;	//저장될 파일 명
//			
//			File targetFile1 = new File(fileRoot + savedFileName1);	
//			File targetFile2 = new File(fileRoot + savedFileName2);	
//			File targetFile3 = new File(fileRoot + savedFileName3);	
//			try {
//				InputStream fileStream1 = multipartFile1.getInputStream();
//				FileUtils.copyInputStreamToFile(fileStream1, targetFile1); //파일 저장
//				
//				InputStream fileStream2 = multipartFile2.getInputStream();
//				FileUtils.copyInputStreamToFile(fileStream2, targetFile2); //파일 저장
//				
//				InputStream fileStream3 = multipartFile3.getInputStream();
//				FileUtils.copyInputStreamToFile(fileStream3, targetFile3); //파일 저장
//				
//				//썸네일 만들기 
//				String oPath = fileRoot + savedFileName1; // 원본 이미지 파일 경로
//				File oFile = new File(oPath);
//				
//				int index = oPath.lastIndexOf(".");
//				String ext = oPath.substring(index + 1); // 파일 확장자
//				
//				
//				String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
//				File thumbFolder = new File(thumbPath);
//				
//				if (!thumbFolder.exists()) {
//					try{
//						thumbFolder.mkdir(); //폴더 생성합니다.
//					    System.out.println("create Folder");
//				        } 
//				        catch(Exception e){
//					    e.getStackTrace();
//					}        
//			    }else {
//			        	 
//					System.out.println("aleady create Folder");
//				}
//
//				
//				String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
//				System.out.println("썸네일저장 경로 : " + tPath);
//				File tFile = new File(tPath);
//				
//				double ratio = 4; // 이미지 축소 비율
//	
//				
//				//썸네일 생성 시작
//				BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
//				int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
//				int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
//
//
//				BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
//				Graphics2D graphic = tImage.createGraphics();
//				Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
//				graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
//				graphic.dispose(); // 리소스를 모두 해제
//
//				
//				
//				ImageIO.write(tImage, ext, tFile);
//				
//				//썸네일 생성 종료
//				
//			} catch (Exception e) {
//				//파일삭제
//				FileUtils.deleteQuietly(targetFile1);	//저장된 현재 파일 삭제
//				FileUtils.deleteQuietly(targetFile2);	//저장된 현재 파일 삭제
//				FileUtils.deleteQuietly(targetFile3);	//저장된 현재 파일 삭제
//				e.printStackTrace();
//	
//			}
//			
//			bannervo.setOriginalFileName1(originalFileName1);
//			bannervo.setSaveFileName1(savedFileName1);
//			bannervo.setSavedFileName1("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName1);
//			bannervo.setThumburl1("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName1);
//			
//			bannervo.setOriginalFileName2(originalFileName2);
//			bannervo.setSaveFileName2(savedFileName2);
//			bannervo.setSavedFileName2("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName2);
//			bannervo.setThumburl2("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName2);
//			
//			bannervo.setOriginalFileName3(originalFileName3);
//			bannervo.setSaveFileName3(savedFileName3);
//			bannervo.setSavedFileName3("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName3);
//			bannervo.setThumburl3("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName3);
//
//			
//			bannerservice.Insert(bannervo);
//			entity = new ResponseEntity<String>("success",HttpStatus.OK);
//			
//				
//		}catch(Exception e){
//			e.printStackTrace();
//			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}
//	
//	
//	
//	
//	@RequestMapping(value = {"/bannerModify"}, method = {RequestMethod.GET})
//	  public String bannerModify(BannerVO bannervo, @RequestParam("idx") int idx, Model model) {
//	   
//		  bannervo = bannerservice.bannerModify(idx);
//		 model.addAttribute("bannervo", bannervo);
//
//		 int contactCount =  contactservice.getContactCount();
//		 model.addAttribute("contactCount",contactCount );
//		 
//	     return "/admin/bannerModify";
//	}
//	
//	
//	
//	@RequestMapping(value="/bannerUpdate", method=RequestMethod.POST) 
//	public String bannerUpdate(BannerVO bannervo,Model model,MultipartFile thumb1,MultipartFile thumb2,MultipartFile thumb3,HttpServletRequest request) {
//		
//		String delFileName1 = getDeleteFileName1(bannervo.getIdx());
//		String delFileName2 = getDeleteFileName2(bannervo.getIdx());
//		String delFileName3 = getDeleteFileName3(bannervo.getIdx());
//		
//		System.out.println("getDeleteFileName1 : " + delFileName1);
//		System.out.println("getDeleteFileName2 : " + delFileName2);
//		System.out.println("getDeleteFileName3 : " + delFileName3);
//		int idx = bannervo.getIdx();
//		
//	
//		
//		if(thumb1.getOriginalFilename().equals("") || thumb2.getOriginalFilename().equals("") || thumb3.getOriginalFilename().equals("")  ) {
//			
//			String getSavedFileName1 = getSaveFileName1(bannervo.getIdx());
//			String getOriginFileName1 = getOriginFileName1(bannervo.getIdx());
//			
//			String getSavedFileName2 = getSaveFileName2(bannervo.getIdx());
//			String getOriginFileName2 = getOriginFileName2(bannervo.getIdx());
//			
//			String getSavedFileName3 = getSaveFileName3(bannervo.getIdx());
//			String getOriginFileName3 = getOriginFileName3(bannervo.getIdx());
//			
//			bannervo.setSavedFileName1(getSavedFileName1);
//			bannervo.setOriginalFileName1(getOriginFileName1);
//			
//			bannervo.setSavedFileName2(getSavedFileName2);
//			bannervo.setOriginalFileName2(getOriginFileName2);
//			
//			bannervo.setSavedFileName3(getSavedFileName3);
//			bannervo.setOriginalFileName3(getOriginFileName3);
//			
//			
//			bannervo.setSaveFileName1(bannervo.getSaveFileName1());
//			bannervo.setThumburl1(bannervo.getThumburl1());
//			
//			bannervo.setSaveFileName2(bannervo.getSaveFileName2());
//			bannervo.setThumburl2(bannervo.getThumburl2());
//			
//			bannervo.setSaveFileName3(bannervo.getSaveFileName3());
//			bannervo.setThumburl3(bannervo.getThumburl3());
//			
//			
//			bannerservice.bannerUpdate(bannervo);
//			
//		}else {
//
//			saveUpdateFile(request,delFileName1,delFileName2,delFileName3,idx);
//			
//			String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
//			String fileRoot = contextRoot + "resources/uploadBannerImageFile/"+idx+"/";
//		    System.out.println("fileRoot : " +fileRoot);
//		    File Folders = new File(fileRoot);
//		    if (!Folders.exists()) {
//				try{
//				    Folders.mkdir(); 
//				    
//			     } 
//			        catch(Exception e){
//				    e.getStackTrace();
//				}        
//		     }
//
//			try {
//
//				System.out.println("fileRoot"+fileRoot);
//				
//				String originalFileName1 = thumb1.getOriginalFilename();	//오리지날 파일명
//				String extension1 = originalFileName1.substring(originalFileName1.lastIndexOf("."));	//파일 확장자
//				String savedFileName1 = UUID.randomUUID() + extension1;	//저장될 파일 명
//				
//				String originalFileName2 = thumb2.getOriginalFilename();	//오리지날 파일명
//				String extension2 = originalFileName2.substring(originalFileName2.lastIndexOf("."));	//파일 확장자
//				String savedFileName2 = UUID.randomUUID() + extension2;	//저장될 파일 명
//				
//				String originalFileName3 = thumb3.getOriginalFilename();	//오리지날 파일명
//				String extension3 = originalFileName3.substring(originalFileName3.lastIndexOf("."));	//파일 확장자
//				String savedFileName3 = UUID.randomUUID() + extension3;	//저장될 파일 명
//				
//				File targetFile1 = new File(fileRoot + savedFileName1);	
//				File targetFile2 = new File(fileRoot + savedFileName2);	
//				File targetFile3 = new File(fileRoot + savedFileName3);	
//				try {
//					InputStream fileStream1 = thumb1.getInputStream();
//					FileUtils.copyInputStreamToFile(fileStream1, targetFile1); //파일 저장
//					
//					InputStream fileStream2 = thumb2.getInputStream();
//					FileUtils.copyInputStreamToFile(fileStream2, targetFile2); //파일 저장
//					
//					InputStream fileStream3 = thumb3.getInputStream();
//					FileUtils.copyInputStreamToFile(fileStream3, targetFile3); //파일 저장
//
//					
//					//썸네일 만들기 
//					String oPath = fileRoot + savedFileName1; // 원본 이미지 파일 경로
//					File oFile = new File(oPath);
//					
//					int index = oPath.lastIndexOf(".");
//					String ext = oPath.substring(index + 1); // 파일 확장자
//					
//					
//					String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
//					File thumbFolder = new File(thumbPath);
//					
//					if (!thumbFolder.exists()) {
//						try{
//							thumbFolder.mkdir(); //폴더 생성합니다.
//						    System.out.println("create Folder");
//					        } 
//					        catch(Exception e){
//						    e.getStackTrace();
//						}        
//				    }else {
//				        	 
//						System.out.println("aleady create Folder");
//					}
//					
//					
//					
//					String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
//					System.out.println("썸네일저장 경로 : " + tPath);
//					File tFile = new File(tPath);
//					
//					double ratio = 4; // 이미지 축소 비율
//					
//					//썸네일 생성 시작
//					BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
//					int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
//					int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
//
//
//					BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
//					Graphics2D graphic = tImage.createGraphics();
//					Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
//					graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
//					graphic.dispose(); // 리소스를 모두 해제
//
//					ImageIO.write(tImage, ext, tFile);
//					
//					//썸네일 생성 종료
//					
//				} catch (Exception e) {
//					//파일삭제
//					FileUtils.deleteQuietly(targetFile1);	//저장된 현재 파일 삭제
//					FileUtils.deleteQuietly(targetFile2);	//저장된 현재 파일 삭제
//					FileUtils.deleteQuietly(targetFile3);	//저장된 현재 파일 삭제
//					e.printStackTrace();
//		
//				}
//				
//				
//				bannervo.setSavedFileName1("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName1);
//				bannervo.setOriginalFileName1(thumb1.getOriginalFilename());
//				bannervo.setSaveFileName1(savedFileName1);
//				bannervo.setThumburl1("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName1);
//				
//				bannervo.setSavedFileName2("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName2);
//				bannervo.setOriginalFileName2(thumb2.getOriginalFilename());
//				bannervo.setSaveFileName2(savedFileName2);
//				bannervo.setThumburl2("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName2);
//				
//				
//				bannervo.setSavedFileName3("/resources/uploadBannerImageFile/"+idx+"/"+savedFileName3);
//				bannervo.setOriginalFileName3(thumb3.getOriginalFilename());
//				bannervo.setSaveFileName3(savedFileName3);
//				bannervo.setThumburl3("/resources/uploadBannerImageFile/"+idx+"/thumb/t-"+savedFileName3);
//				
//				
//				bannerservice.bannerUpdate(bannervo);
//	
//			}catch (Exception e) {
//				e.printStackTrace();
//			}
//			
//			
//			
//			
//		}
//
//		
//		
//		return "redirect:/admin/banner";
//	}
//	
//	
//
//	@RequestMapping(value = {"/bannerDelete"}, method = {RequestMethod.POST})
//	  public String bannerDelete(BannerVO bannervo, Model model, HttpSession session, @RequestParam("didx") int idx, HttpServletRequest request, @RequestParam(value = "num", defaultValue = "1") int num) {
//	   
//		 
//		 String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
//		 String fileRoot = contextRoot+"resources/uploadBannerImageFile/"+idx+"/";
//		 deleteFile(fileRoot);
//		 
//		 
//		 bannerservice.bannerDelete(idx);
//		 return "redirect:/admin/banner";
//	  }
//	
//	
//	private String getDeleteFileName1(int idx) {
//		return  bannerservice.getDeleteFileName1(idx);
//	}
//	
//	private String getDeleteFileName2(int idx) {
//		return  bannerservice.getDeleteFileName2(idx);
//	}
//	
//	private String getDeleteFileName3(int idx) {
//		return  bannerservice.getDeleteFileName3(idx);
//	}
//
//
//	private String getOriginFileName1(int idx) {
//		return  bannerservice.getOriginFileName1(idx);
//	}
//
//
//	private String getSaveFileName1(int idx) {
//		return  bannerservice.getSaveFileName1(idx);
//	}
//	
//	private String getOriginFileName2(int idx) {
//		return  bannerservice.getOriginFileName2(idx);
//	}
//
//
//	private String getSaveFileName2(int idx) {
//		return  bannerservice.getSaveFileName2(idx);
//	}
//
//	
//	private String getOriginFileName3(int idx) {
//		return  bannerservice.getOriginFileName3(idx);
//	}
//
//
//	private String getSaveFileName3(int idx) {
//		return  bannerservice.getSaveFileName3(idx);
//	}


	
	

	
	
	
	private String getDeleteFileName(Integer idx) {
		return  galleryservice.getDeleteFileName(idx);
	}
	
	private String getOriginFileName(Integer idx) {
		return  galleryservice.getOriginFileName(idx);
	}

	private String getSaveFileName(Integer idx) {
		return  galleryservice.getSaveFileName(idx);
	}

	private void saveUpdateFile(HttpServletRequest request, String delFileName1, String delFileName2, String delFileName3,int idx) {
		 
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/uploadBannerImageFile/"+idx+"/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("UPLOAD_PATH :" +UPLOAD_PATH);
	    
	    String deleteFileName1 = UPLOAD_PATH+delFileName1;
	    System.out.println("DeleteFileName1 : " + deleteFileName1);
	    File deleteFile = new File(deleteFileName1);
	    
	    
	    deleteFile(UPLOAD_PATH);

	}
	
	
	
	private void saveUpdateFile(MultipartFile uploadfile, HttpServletRequest request, String delFileName, int idx) {
		 
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/uploadGalleryImageFile/"+idx+"/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("UPLOAD_PATH :" +UPLOAD_PATH);
	    
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
	    
	    deleteFile(UPLOAD_PATH);

	}
	
	
	private void deleteFile(String fileRoot) {
		File deleteFolder = new File(fileRoot);

		if(deleteFolder.exists()){
			File[] deleteFolderList = deleteFolder.listFiles();
			System.out.println("Delete Folder List :" + deleteFolderList);
			for (int i = 0; i < deleteFolderList.length; i++) {
				if(deleteFolderList[i].isFile()) {
					deleteFolderList[i].delete();
				}else {
					deleteFile(deleteFolderList[i].getPath());
				}
				deleteFolderList[i].delete(); 
			}
			deleteFolder.delete();
		}
	
		
	}
	
	
	@RequestMapping(value="/uploadNoticeImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadNoticeImageFile(NoticeVO noticevo, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
		
		int idx = 0;
        if (noticeservice.getImgCount() == 0) {
          idx = 1;
          System.out.println("idx : " + idx);
        } else {
          idx = noticeservice.getLastIdx()+1;  // 마지막 행의 idx 값을 가져와서 1 증가 
          System.out.println("idx : " + idx);
       } 
        
        
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/uploadNoticeImageFile/"+idx+"/";
		System.out.println("fileRoot : " +fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	
		String savedFileName = UUID.randomUUID() + extension;	
		
		File targetFile = new File(fileRoot + savedFileName);	
		System.out.println("targetFile : " + targetFile);
		
		
		
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	
			
			
			

			//썸네일 만들기 
			String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
			File oFile = new File(oPath);
			
			int index = oPath.lastIndexOf(".");
			String ext = oPath.substring(index + 1); // 파일 확장자
			
			
			String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
			File Folder = new File(thumbPath);
			
			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); //폴더 생성합니다.
				    System.out.println("create Folder");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("aleady create Folder");
			}
			
			
			
			String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
			System.out.println("썸네일저장 경로 : " + tPath);
			File tFile = new File(tPath);
			
			double ratio = 4; // 이미지 축소 비율
			
			//썸네일 생성 시작
			BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
			int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
			int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
			
			BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
			Graphics2D graphic = tImage.createGraphics();
			Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
			graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
			graphic.dispose(); // 리소스를 모두 해제

			ImageIO.write(tImage, ext, tFile);
			
			//썸네일 생성 종료
			
				
			jsonObject.addProperty("url", "/resources/uploadNoticeImageFile/"+idx+"/thumb/"+"t-"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("a" + a);
		return a;
		
	}
	
	
	@RequestMapping(value="/uploadNoticeImageUpdateFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadNoticeImageUpdateFile(NoticeVO noticevo,  @RequestParam("idx") int idx, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
        System.out.println("수정 idx :"+idx);
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/uploadNoticeImageFile/"+idx+"/";
		System.out.println("fileRoot : " +fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	
		String savedFileName = UUID.randomUUID() + extension;	
		
		File targetFile = new File(fileRoot + savedFileName);	
		System.out.println("targetFile : " + targetFile);
		
		
		
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	
		
			

			//썸네일 만들기 
			String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
			File oFile = new File(oPath);
			
			int index = oPath.lastIndexOf(".");
			String ext = oPath.substring(index + 1); // 파일 확장자
			
			
			String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
			File Folder = new File(thumbPath);
			
			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); //폴더 생성합니다.
				    System.out.println("create Folder");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("aleady create Folder");
			}
			
			
			
			String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
			System.out.println("썸네일저장 경로 : " + tPath);
			File tFile = new File(tPath);
			
			double ratio = 4; // 이미지 축소 비율
			
			//썸네일 생성 시작
			BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
			int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
			int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
			
			BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
			Graphics2D graphic = tImage.createGraphics();
			Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
			graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
			graphic.dispose(); // 리소스를 모두 해제

			ImageIO.write(tImage, ext, tFile);
			
			//썸네일 생성 종료
				
			jsonObject.addProperty("url", "/resources/uploadNoticeImageFile/"+idx+"/thumb/"+"t-"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
			
			String thumbNailUrl = "/resources/uploadNoticeImageFile/"+idx+"/thumb/"+"t-"+savedFileName;
			noticevo.setThumburl(thumbNailUrl);
			noticevo.setIdx(idx);
			noticeservice.noticeThumbUpdate(noticevo);
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("a" + a);
		return a;
		
	}
	
	
	
	/* 문의글 */
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model, Criteria cri) {

		 List<ContactVO> contactList = contactservice.getContactList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(contactservice.listCountCriteria(cri));
		 
		 model.addAttribute("contactList", contactList);
		 model.addAttribute("pageMaker",pageMaker);
		 
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		return "/admin/contact";
	}
	
	
	
	@RequestMapping(value = "/contactResponse", method = RequestMethod.GET)
	public String contactResponse(Locale locale, Model model, ContactVO contactvo, @RequestParam("idx") int idx) {

		
		 contactvo = contactservice.getContectResponse(idx);
		 
		 model.addAttribute("contactvo",contactvo );
		 
		 int contactCount =  contactservice.getContactCount();
		 model.addAttribute("contactCount",contactCount );
		 
		 
		 return "/admin/contactResponse";
		
	}
	
	
  @RequestMapping(value = "/contactResponse", method = RequestMethod.POST )
  public void contactResponse(ContactVO contactvo,   @RequestParam("idx") int idx, Model model,  HttpServletRequest request, HttpServletResponse response_email) throws IllegalStateException, IOException, MessagingException {
    
	 System.out.println("mail start1");
	 System.out.println("--------");
	 System.out.println(contactvo.getIdx());
	 System.out.println(contactvo.getEmail());
	 System.out.println(contactvo.getResponseMessage());
	 System.out.println("---------");
	 String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
     final String user = "kkameun@naver.com"; 
     final String password = "qkagksmf123!@#"; // 패스워드

     // SMTP 서버 정보를 설정한다.
     Properties props = new Properties();
     props.put("mail.smtp.host", host);
     props.put("mail.smtp.port", 587);
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.ssl.protocols","TLSv1.2");
     
     Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
             return new PasswordAuthentication(user, password);
         }
     });

     try {
    	 
    	 
    	 contactservice.updateContact(contactvo);
    	 
    	 
         MimeMessage message = new MimeMessage(session);
         message.setFrom(new InternetAddress(user));
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(contactvo.getEmail()));

         // 메일 제목
         message.setSubject("[SSPLAN] 답변 드립니다.");

         // 메일 내용
         message.setText(contactvo.getResponseMessage());

         // send the message
         Transport.send(message);
         System.out.println("Success Message Send");

         
        
     } catch (MessagingException e) {
         e.printStackTrace();
     }

	 
	 
	 
	 System.out.println("mail end");

  }

	

}
