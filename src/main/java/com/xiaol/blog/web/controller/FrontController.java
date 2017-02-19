package com.xiaol.blog.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xiaol.blog.common.JsonResult;
import com.xiaol.blog.common.SysCode;
import com.xiaol.blog.meta.Blogger;
import com.xiaol.blog.service.BloggerService;

/**
 * @Description 前端页面控制器，包括login、projects、archives、tags、about
 * @date 创建时间：2017年2月13日 下午11:01:41
 */
@Controller
@RequestMapping
public class FrontController {

	@Resource
	private BloggerService bloggerService;

	@RequestMapping("/dologin")
	public String doLogin(@ModelAttribute Blogger blogger, HttpServletRequest request, HttpSession session,
			ModelMap modelMap) {
		// FIXME 暂时使用session，后期改用shiro
		JsonResult result = new JsonResult();
		if (StringUtils.isEmpty(blogger.getUsername()) || StringUtils.isEmpty(blogger.getPassword())) {
			result.setCode(SysCode.FAIL);
			result.setMessage("Please check your username or password!");
			modelMap.addAttribute("loginResult", result);
			return "redirect:/login";
		}
		Blogger byUsername = bloggerService.getByUsername(blogger.getUsername());
		if (byUsername != null && byUsername.getPassword().equals(blogger.getPassword())) {
			session.setAttribute("blogger", byUsername);
			return "/admin/home";
		} else {
			result.setCode(SysCode.FAIL);
			result.setMessage("Please check your username and password!");
			request.setAttribute("loginResult", result);
			return "forward:/login?result=fail";
		}
	}

	/**
	 * @Description: 测试页
	 * @author ShawnLin
	 * @date 创建时间：2017年2月19日 下午5:27:37
	 */
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	/**
	 * @Description: 主页
	 * @author ShawnLin
	 * @date 创建时间：2017年2月19日 下午5:27:16
	 */
	@RequestMapping(path = { "/home", "/" })
	public String home() {
		return "home";
	}

	/**
	 * @Description: 登录页
	 * @author ShawnLin
	 * @date 创建时间：2017年2月19日 下午5:27:28
	 */
	@RequestMapping("/login")
	public String loginView() {
		return "login";
	}

	public String getProjects() {
		return null;
	}

	public String getArchives() {
		return null;
	}

	public String getTags() {
		return null;
	}

	public String about() {
		return null;
	}
}
