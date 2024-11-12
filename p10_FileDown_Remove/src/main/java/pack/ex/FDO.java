package pack.ex;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

public class FDO {
	private static final String SAVEFOLDER ="D:\\Java_Web_AI\\silsp\\JSP\\p10_FileDown_Remove\\src\\main\\webapp\\fileStorage";
	
	
	// 파일 다운로드 메서드 시작
	public void mtdDownLoad(HttpServletRequest req, 
			HttpServletResponse res, 
			JspWriter out, 
			PageContext pageContext) {
		
		String fName = "";
		
		try {
			req.setCharacterEncoding("UTF-8");
			fName = req.getParameter("fName");
			
			File file = new File(SAVEFOLDER + File.separator + fName);
			byte[] b = new byte[(int) file.length()];
			res.setHeader("Accept=Ranges", "bytes");
			req.getHeader("User_Agent");
			res.setContentType("application/smnet;charset=utf-8");
			res.setHeader("Content-Disposition", "attachment;fileName=" 
			+new String(fName.getBytes("UTF-8"), "ISO-8859-1"));
			
			out.clear();
			out = pageContext.pushBody();
			
			if(file.isFile()) {
				BufferedInputStream fIn = new BufferedInputStream(new FileInputStream(file));
				BufferedOutputStream fOuts = new BufferedOutputStream(res.getOutputStream());
				
				int read = 0;
				while((read = fIn.read(b)) != -1) {
					fOuts.write(b, 0, read);
				}
				
				fOuts.close();
				fIn.close();
			}
		} catch (Exception e) {
			System.out.println("파일 처리 이슈 : " + e.getMessage());
		}
	}
	
	public boolean mtdDelete (HttpServletRequest req) {
		boolean remChk = false;
		String fName = "";
		try {
			req.setCharacterEncoding("UTF-8");
			fName = req.getParameter("fName");
			
			String filePath = SAVEFOLDER + "/" + fName;
			File file = new File(filePath);
			if(file.exists()) remChk = file.delete();
			
		}catch(UnsupportedEncodingException e) {
			System.out.println(e.getMessage());
		}
		
		return remChk;
	}
}
