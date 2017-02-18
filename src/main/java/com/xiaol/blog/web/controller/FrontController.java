package com.xiaol.blog.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xiaol.blog.meta.Blogger;

/**
 * @Description 前端页面控制器，包括login、projects、archives、tags、about
 * @date 创建时间：2017年2月13日 下午11:01:41
 */
@Controller
@RequestMapping("/blog")
public class FrontController {

	@RequestMapping("/login")
	public String login(Blogger blogger, HttpServletRequest request) {

		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(blogger.getUsername(), blogger.getPassword());
		// 之后再做加密处理
		try {
			subject.login(token);
		} catch (AuthenticationException e) {
			e.printStackTrace();
			request.setAttribute("bloger", blogger);
			request.setAttribute("errorInfo", "用户名或密码错误");
		}
		return null;
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
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
