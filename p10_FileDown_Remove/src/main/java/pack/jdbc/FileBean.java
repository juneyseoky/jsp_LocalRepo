package pack.jdbc;

public class FileBean {
	
	private int num;
	private String fsub;
	private String fContent;
	private String fRealName; 
	private String fUploadName;
	private int filesize;
	private String remoteIP;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getFsub() {
		return fsub;
	}
	public void setFsub(String fsub) {
		this.fsub = fsub;
	}
	public String getfContent() {
		return fContent;
	}
	public void setfContent(String fContent) {
		this.fContent = fContent;
	}
	public String getfRealName() {
		return fRealName;
	}
	public void setfRealName(String fRealName) {
		this.fRealName = fRealName;
	}
	public String getfUploadName() {
		return fUploadName;
	}
	public void setfUploadName(String fUploadName) {
		this.fUploadName = fUploadName;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	public String getRemoteIP() {
		return remoteIP;
	}
	public void setRemoteIP(String remoteIP) {
		this.remoteIP = remoteIP;
	}
	

}
