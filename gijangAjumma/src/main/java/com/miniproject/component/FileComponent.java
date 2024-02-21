package com.miniproject.component;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileComponent {

	String saveDirectory = "C:\\upload";
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	
	public FileComponent() {
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public String getFileName(MultipartFile mpfile) {
		
		if(!mpfile.isEmpty()) {
			try {
				// 오늘 날짜 객체 생성
				Date now = new Date();
				// 오늘 날짜와 mpfile의 이름을 합친 파일 이름을 생성
				String fileName = sdf.format(now) + "_" + mpfile.getOriginalFilename();
				File dest = new File(saveDirectory, fileName);
				// saveDirectory에 fileName으로 파일 생성
				mpfile.transferTo(dest);
				
				return fileName;
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public void deleteFile(String fileName) {
		File dir = new File(saveDirectory, fileName);
		if(dir.exists()) {
			dir.delete();
		}
	}
}
