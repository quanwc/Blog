package com.xiaol.blog.web.controller.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xiaol.blog.meta.Blog;
import com.xiaol.blog.meta.Blogger;
import com.xiaol.blog.service.BlogService;
import com.xiaol.blog.service.BloggerService;

/**
 * @Description 博主控制器，用于发布文章等
 * @date 创建时间：2017年2月12日 下午11:11:06
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private BlogService blogService;
	@Resource
	private BloggerService bloggerService;

	/**
	 * @Description: 跳转到后台主页
	 * @date 创建时间：2017年2月28日 下午4:46:40
	 */
	@RequestMapping(path = { "/homeView", "/" }, method = RequestMethod.GET)
	public String homeView(ModelMap root) {
		List<Blog> blogList = blogService.findAllBlog();
		root.addAttribute("blogList", blogList);
		return "/admin/home";
	}

	/**
	 * @Description: 跳转到博客添加页
	 * @date 创建时间：2017年2月28日 下午4:46:58
	 */
	@RequestMapping(path = { "/blogAddView" }, method = RequestMethod.GET)
	public String blogAddView() {
		return "/admin/blog_add";
	}

	/**
	 * @Description: 添加博客
	 * @date 创建时间：2017年2月28日 下午4:47:26
	 */
	@RequestMapping(path = { "/blogAdd" }, method = RequestMethod.POST)
	public String blogAdd(@ModelAttribute Blog blog) {
		blogService.addBlog(blog);
		return "redirect:/admin/homeView";
	}

	/**
	 * @Description: 删除博客
	 * @date 创建时间：2017年2月28日 下午7:34:57
	 */
	@RequestMapping(path = { "/blogDelete" }, method = RequestMethod.POST)
	public String blogDelete(int id) {
		blogService.deleteBlogById(id);
		return "redirect:/admin/homeView";
	}

	/**
	 * @Description: 跳转更新博客页
	 * @date 创建时间：2017年2月28日 下午4:47:38
	 */
	@RequestMapping(path = "/blogUpdateView/{id}")
	public String blogUpdateView(@PathVariable int id, ModelMap root) {
		Blog blog = blogService.findBlogById(id);
		root.addAttribute("blog", blog);
		return "/admin/blog_update";
	}

	/**
	 * @Description: 博客更新提交
	 * @date 创建时间：2017年2月28日 下午4:47:56
	 */
	@RequestMapping(path = { "/blogUpdate" }, method = RequestMethod.POST)
	public String blogUpdate(Blog blog) {
		blogService.updateBlog(blog);
		return "redirect:/admin/homeView";
	}

	/**
	 * @Description: 跳转到简历编辑页
	 * @date 创建时间：2017年2月28日 下午4:48:07
	 */
	@RequestMapping(path = { "/aboutView" }, method = RequestMethod.GET)
	public String aboutView(ModelMap root) {
		Blogger blogger = bloggerService.findBlogger();
		root.addAttribute("blogger", blogger);
		return "/admin/about";
	}

	/**
	 * @Description: 提交简历更新
	 * @date 创建时间：2017年2月28日 下午4:48:52
	 */
	@RequestMapping(path = { "/aboutUpdate" }, method = RequestMethod.POST)
	public String aboutUpdate(@ModelAttribute Blogger blogger) {
		bloggerService.updateAbout(blogger);
		return "forward:/about";
	}

	/**
	 * @Description: 退出后台
	 * @date 创建时间：2017年3月1日 上午12:19:10
	 */
	@RequestMapping(path = { "/quit" }, method = RequestMethod.GET)
	public String quit(HttpSession session) {
		/*
		 * 不需要手动清除session，shiro框架会帮我们做。如果手动清除。
		 * 会报错：java.lang.IllegalStateException: getAttribute: Session already
		 * invalidated
		 */
		// session.invalidate();
		return "forward:/home";
	}

}