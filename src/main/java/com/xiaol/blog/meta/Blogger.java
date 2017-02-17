package com.xiaol.blog.meta;

/**
 * @Description 博主实体类
 * @date 创建时间：2017年2月17日 下午11:03:25
 */
public class Blogger {
	private int id;
	private String username;// 姓名
	private String password;// 密码
	private String headPortrait;// 头像
	private String profile; // 博主信息

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHeadPortrait() {
		return headPortrait;
	}

	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

}
