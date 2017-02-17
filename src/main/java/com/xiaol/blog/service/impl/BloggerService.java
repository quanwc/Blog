package com.xiaol.blog.service.impl;

import com.xiaol.blog.meta.Blogger;

/**
 * @Description 博客主Service
 * @date 创建时间：2017年2月17日 下午11:33:14
 */
public interface BloggerService {

	public Blogger getByUsername(String name);

}
