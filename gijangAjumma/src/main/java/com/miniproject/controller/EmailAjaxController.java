package com.miniproject.controller;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/email")
public class EmailAjaxController {
	
	@Autowired JavaMailSenderImpl mailSender;
	
	@GetMapping("/emailAuth")
	public int emailAuth(String email) {
		// 난수의 범위 111111 ~ 999999 (6자리)
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		
		// 이메일 보낼 양식
		String setFrom = "whalsqud6553@naver.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "인증 코드는 " + checkNum + " 입니다." +
						 "<br>" +
						 "해딩 인증코드를 코드 확인란에 입력해 주세요.";
		
		
		try {
			// Spring에서 제공하는 mail API
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return checkNum;
	}
	
}
