package com.test.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisputeController {
	
	private static final Logger logger = LoggerFactory.getLogger(DisputeController.class);

	// 회원 가입 폼 이동
	@RequestMapping(value = "/dispute.do")
	public String aboutUs() throws Exception{
		logger.info("Dispute Page Success.");
		
		return "dispute";
	}
	
}
