package com.xiaol.blog.meta;

/**
 * @Description 博客文章实体类
 * @date 创建时间：2017年2月20日 下午1:17:58
 */
public class Blog {
	private int id;
	private String title;// 标题
	private String tags;// 分类标签
	private String md;// 分类标签
	private String html;// 分类标签

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}
}
