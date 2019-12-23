package com.test.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelectionController {
	
	private static final Logger logger = LoggerFactory.getLogger(SelectionController.class);

	// 회원 가입 폼 이동
	@RequestMapping(value = "/selection.do")
	public String aboutUs() throws Exception{
		logger.info("Selection Page Success.");
		
		return "selection";
	}
	
}
