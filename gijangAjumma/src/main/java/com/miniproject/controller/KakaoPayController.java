package com.miniproject.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/gijangAjumma")
public class KakaoPayController {
	
	@RequestMapping("/kakaopayment")
	public String kakaopay(String item_name, int quantity, int total_amount, String partner_user_id) {
		try {
			URL kakaopayURL = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection serverConnection = (HttpURLConnection) kakaopayURL.openConnection(); 
			serverConnection.setRequestMethod("POST");
			serverConnection.setRequestProperty("Authorization", "KakaoAK 7666823131e7ced17e9a1f9b3d43925f");
			serverConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConnection.setDoOutput(true);
			
			String encodedItemName = URLEncoder.encode(item_name, "UTF-8");
			String parameter = "cid=TC0ONETIME&partner_order_id=6553&partner_user_id=" + partner_user_id + "&item_name=" + encodedItemName 
					+ "&quantity=" + quantity + "&total_amount=" + total_amount + "&tax_free_amount=0" 
					+ "&approval_url=http://localhost:8080/gijangAjumma/payment/paymentapproval" 
					+ "&cancel_url=http://localhost:8080/gijangAjumma/payment/paymentcancel" 
					+ "&fail_url=http://localhost:8080/gijangAjumma/payment/paymentfail";
			
			// 주는애
			OutputStream ops = serverConnection.getOutputStream();
			// 데이터 주는 클래스
			DataOutputStream dops = new DataOutputStream(ops);
			dops.writeBytes(parameter);
//			dops.flush();
			dops.close(); // flush와 함께 실행
			
			int resultCode = serverConnection.getResponseCode();
			
			// 받는애
			InputStream ips;
			if(resultCode == 200) {	// 성공했다면
				ips = serverConnection.getInputStream();
			}
			else {
				ips = serverConnection.getErrorStream();
			}
			
			// 받은걸 읽는애
			InputStreamReader ipsr = new InputStreamReader(ips);
			// 형변환 하는 애
			BufferedReader bufr = new BufferedReader(ipsr);
			
			return bufr.readLine();
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}";
	}
}
