package cn.yzd3008.app.enterprise.manufacture.util;

public enum SitePages {

	Index("index", "Home page");

	private String pageName;
	private String description;

	private SitePages(String pageName, String description) {
		this.pageName = pageName;
		this.description = description;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
