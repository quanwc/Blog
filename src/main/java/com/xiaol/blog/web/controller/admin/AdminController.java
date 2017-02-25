package com.xiaol.blog.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Description 博主控制器，用于发布文章等
 * @date 创建时间：2017年2月12日 下午11:11:06
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping(path = { "/homeView", "/" })
	public String homeView() {
		return "/admin/home";
	}

	@RequestMapping(path = { "/blogAddView" })
	public String blogAddView() {
		return "/blog_add";
	}
	
	@RequestMapping(path = { "/blogAdd" })
	public String blogAdd() {
		
		return "/admin/";
	}
	
	@RequestMapping(path = { "/projectView" })
	public String projectView() {
		return "/admin/project";
	}
	
	@RequestMapping(path = { "/aboutView" })
	public String aboutView() {
		return "/admin/about";
	}

}