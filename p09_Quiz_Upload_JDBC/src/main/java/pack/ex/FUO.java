package pack.ex;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import pack.jdbc.DBConn;

public class FUO {
	
	public boolean mtdUpload(HttpServletRequest request) {
		
		boolean chk = false;
		String saveFolder = "D:\\Java_Web_AI\\silsp\\JSP\\p09_Quiz_Upload_JDBC\\src\\main\\webapp\\fileStorage";
		int maxSize = 5*1024*1024; // 5MByte 까지 최대 업로드 허용
		String encType = "UTF-8";

		String subject = "";
		String content = "";
		String oriFileName = ""; // 원본 파일명
		String upLoadName = ""; // 업로드후 저장된 파일명
		int fileSize = 0; // 파일 크기
		try{
			DBConn dbconn = new DBConn();
			MultipartRequest mr = new MultipartRequest(
				request, 
				saveFolder,
				maxSize, 
				encType, 
				new DefaultFileRenamePolicy()
				);
			subject = mr.getParameter("subject"); // request 객체가 MultipartRequest의 매개변수로
			content = mr.getParameter("content"); // 넘어가 MultipartRequest의 객체인 mr에서
												  // request안에 있는 메서드들을 사용할수 있음							  
			oriFileName = mr.getOriginalFileName("fileName"); // 원본 파일명
			upLoadName = mr.getFilesystemName("fileName");	  // 업로드 후 저장된 파일명
			
			// 파일 크기 산출
			File file = mr.getFile("fileName");
			fileSize = (int)file.length();

			System.out.println(subject);
			System.out.println(content);
			System.out.println(oriFileName);
			System.out.println(upLoadName);
			System.out.println(fileSize);
			dbconn.insertFile(subject, content, oriFileName, upLoadName, fileSize);
			
			chk = true;
		}catch(IOException e){
			System.out.print(e.getMessage());
		}
		
		return chk;
	}
}
