package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {

	private int idx;
	private String subject;
	private String content;
	private String thumburl;
	private String showYn;
	private String regdate;
	private String updatedate;
}
