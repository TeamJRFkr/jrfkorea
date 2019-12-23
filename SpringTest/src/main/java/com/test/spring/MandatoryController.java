package com.test.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MandatoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(MandatoryController.class);

	// 회원 가입 폼 이동
	@RequestMapping(value = "/mandatory.do")
	public String aboutUs() throws Exception{
		logger.info("Mandatory Page Success.");
		
		return "mandatory";
	}
	
}
