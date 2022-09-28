package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserVO {

	private String uid;
	private String upw;
	private String cpw;
	private String uname;
	private int upoint;
}
