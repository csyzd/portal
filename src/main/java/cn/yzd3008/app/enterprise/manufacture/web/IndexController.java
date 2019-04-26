package cn.yzd3008.app.enterprise.manufacture.web;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.yzd3008.app.enterprise.manufacture.domain.SiteMetaInfo;
import cn.yzd3008.app.enterprise.manufacture.util.SitePages;

@Controller
public class IndexController {

	@RequestMapping(value = { "", "index", "home" }, method = RequestMethod.GET)
	public ModelAndView getIndexPage() {

		ModelAndView mav = new ModelAndView(SitePages.Index.getPageName());

		SiteMetaInfo siteMetaInfo = new SiteMetaInfo();
		siteMetaInfo.setSiteId(1);
		siteMetaInfo.setSiteTitle("Corporation Site");
		siteMetaInfo.setSiteUrl("http://www.baidu.com/");

		mav.addObject("serverDateTime", new Date());
		mav.addObject("siteMetaInfo", siteMetaInfo);

		return mav;
	}
}
