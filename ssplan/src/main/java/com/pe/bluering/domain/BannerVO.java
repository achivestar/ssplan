package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class BannerVO {

	private int idx;
	private String subject;
	private String contents;
	private String category;
	private String client;
	private String saveFileName1;
	private String savedFileName1;
	private String originalFileName1;
	private String thumburl1;
	private String saveFileName2;
	private String savedFileName2;
	private String originalFileName2;
	private String thumburl2;
	private String saveFileName3;
	private String savedFileName3;
	private String originalFileName3;
	private String thumburl3;
	private String showYn;
	private String regdate;
	private String updatedate;
}
