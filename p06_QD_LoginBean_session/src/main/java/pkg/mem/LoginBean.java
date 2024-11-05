package pkg.mem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginBean {

	private String uidReal = "sample";
	private String upwReal = "1234";
	private String uid;   // 입력된 ID
	private String upw;   // 입력된 PW

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public boolean chkAccount(HttpSession session, HttpServletRequest req) {
		
		boolean passChk = false;
		if (uid.equals(uidReal) && upw.equals(upwReal)) {
			passChk = true;
			String uid = req.getParameter("uid");
			session.setAttribute("sid", uid);
			// 세션은 글로벌 변수
			session.setMaxInactiveInterval(30);
			
		}
		
		return passChk;
	}

}