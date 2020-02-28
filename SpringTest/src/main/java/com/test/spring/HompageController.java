package com.test.spring;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.test.spring.DAO.CountriesDAO;
import com.test.spring.model.CountriesDTO;

@Controller // JRF KOREA HOMEPAGE controller
public class HompageController {	
    @Autowired
    	DriverManagerDataSource dataSource;
	@Autowired
		private JavaMailSender mailSender;    
	@Inject
		private CountriesDAO countriesDAO;   
	private static final Logger logger = LoggerFactory.getLogger(HompageController.class);
	
	// index.do 시작페이지
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );		
		return "index";
	}	

	// aboutUs.do  aboutus 페이지
	@RequestMapping(value = "/aboutUs.do")
	public String aboutUs() throws Exception{
		logger.info("AboutUs Page Success.");		
		return "aboutUs";
	}
	
	// contactUs.do contactUs 페이지
	@RequestMapping(value = "/contactUs.do")
	public String contactUs() throws Exception{
		logger.info("ContactUs Page Success.");		
		return "contactUs";
	}
	
	//ListTest.do
	@RequestMapping(value = "/listTest.do")
	public void testGetCountriesList() throws Exception {
		List<CountriesDTO> countryList = countriesDAO.getCountryList();
		logger.info("\n Board List \n ");
		if(countryList.size() > 0) {
			for(CountriesDTO list : countryList) {
				System.out.println(list.receiveCountry + ":" + list.receiveCountry);
			}
		} else {
			logger.info("listTest is fail");
		}
	}
	
	// dispute.do
	@RequestMapping(value = "/dispute.do")
	public String dispute() throws Exception{
		logger.info("Dispute Page Success.");		
		return "dispute";
	}
	
	// howItWork.do
	@RequestMapping(value = "/howItWork.do")
	public String howItWork() throws Exception{
		logger.info("HowItWork Page Success.");	
		return "howItWork";
	}
	
	//mailSending.do
	// mailForm
	@RequestMapping(value = "/mailinquiry.do")
	public String mailinquiry() {   
	    return "mailinquiry.do";
	}
	
	// mailSending 코드
	@RequestMapping(value = "/mailSending.do")
	public String mailSending(HttpServletRequest request) {
	    String setfrom = "koreajrf@gamil.com";	 //보내는 사람 이메일 
	    String tomail  = request.getParameter("tomail");     // 받는 사람 이메일
	    String title   = request.getParameter("title");      // 연락처(email,전화번호)
	    String content = request.getParameter("content");    // 내용
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper 
	                        = new MimeMessageHelper(message, true, "UTF-8");
	      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo("dongki@jpremit.com");     // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText(content);  // 메일 내용     
	      mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }   
	    return "redirect:/mailinquiry.do";
	  }
	
	//mailinquiry.do
	@RequestMapping(value = "/mailinquiry.do", method = RequestMethod.GET)
	public String mailinquiry(Locale locale, Model model) {
			logger.info("mailinquiry is {}.", locale);
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			model.addAttribute("serverTime", formattedDate );	
			return "mailinquiry";
			
	}
	
	//mandatory.do
	@RequestMapping(value = "/mandatory.do")
	public String mandatory() throws Exception{
		logger.info("Mandatory Page Success.");
		
		return "mandatory";
	}
	
	//policy.do
	@RequestMapping(value = "/policy.do")
	public String policy() throws Exception{
		logger.info("Policy Page Success.");
		
		return "policy";
	}
	
	//Ratecalculator.do
	@RequestMapping(value = "/Ratecalculator.do")
	public String aboutUs(Model model) throws Exception{
		logger.info("Ratecalculator Page Success.");
		List<CountriesDTO> list = countriesDAO.getTodayRateList();
		if(list.size() > 0) {
			model.addAttribute("list", list);
		}		
		return "Ratecalculator";
	}
	
	//selection.do
	@RequestMapping(value = "/selection.do")
	public String selection() throws Exception{
		logger.info("Selection Page Success.");
		return "selection";
	}
	
	//terms.do
	@RequestMapping(value = "/terms.do")
	public String terms() throws Exception{
		logger.info("Terms Page Success.");	
		return "terms";
	}
	
	//todayRate.do
	@RequestMapping(value = "/todayRate.do")
	public String todayRate(Model model) throws Exception{
		logger.info("TodayRate Page Success.");	
		List<CountriesDTO> list = countriesDAO.getTodayRateList();
		String lastUpdate = countriesDAO.getLastUpdateDate();		
		if(list.size() > 0) {
			model.addAttribute("list", list);
			model.addAttribute("lastUpdate", lastUpdate);
		}		
		return "todayRate";
	}
}
