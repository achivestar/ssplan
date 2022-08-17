package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class GalleryVO {

	private int idx;
	private String subject;
	private String contents;
	private String url;
	private String saveFileName;
	private String savedFileName;
	private String originalFileName;
	private String thumburl;
	private int category;
	private String regdate;
	private String updatedate;
	
	
}
