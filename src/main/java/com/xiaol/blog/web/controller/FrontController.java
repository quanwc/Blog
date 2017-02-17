package com.xiaol.blog.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
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
@RequestMapping
public class FrontController {

	public String login(Blogger blogger, HttpServletRequest request) {
		
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(blogger.getUsername(), blogger.getPassword());
		// 之后再做加密处理
		subject.login(token);
		return null;
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
