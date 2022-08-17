package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ContactVO {

	private int idx;
	private String name;
	private String email;
	private String subject;
	private String message;
	private String responseMessage;
	private int responseYn; 
	private String regdate;
	private String responsedate;

}
