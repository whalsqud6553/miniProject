package com.miniproject.component;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class HashComponent {
	
	// 해시값을 더 암호화 하기 위한 salt
	public String getSalt() {
		// randomUUID에서 8자리까지만 랜덤 문자열 추출
		String salt = UUID.randomUUID().toString().substring(0, 8);
		return salt;
	}
	
	// 비밀번호와 salt값을 이용해 hash 반환
	public String getHash(String source, String salt) {
		try {
			// 비밀번호를 암호화 하기 위해 MessageDigest SHA512 알고리즘으로 해시값 생성
			MessageDigest md = MessageDigest.getInstance("SHA512");
			// 데이터를 해시(다이제스트를 생신) 한다
			md.update(salt.getBytes());
			md.update(source.getBytes());
			
			// slat와 source로 128자리 16진수를 양수로 저장
			String hash = String.format("%0128x", new BigInteger(1, md.digest()));	
			
			return hash;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		// try안에 있는 hash가 return 되지 않으면 null return
		return null;
	}
}
