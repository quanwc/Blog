<!DOCTYPE html>
<html lang="zh-CN">
<#include "/include/head.ftl">
<body>
	<#include "/include/nav_top.ftl">

	<!-- 内容栏 -->
	<div class="container">

		<div class="row">

			<div class="col-sm-12 blog-main">

				<br>
				<div class="blog-post">
					<h2 class="blog-post-title">简历</h2>
					<p class="blog-post-meta">
						Last update in February 20, 2017 by <a href="#">Shawn</a>
					</p>

					<h3>联系方式</h3>
					<ul>
						<li><strong>QQ：</strong>381519422</li>
						<li><strong>手机：</strong>13927425737</li>
						<li><strong>邮箱：</strong>13927425737@163.com</li>
					</ul>
					<hr>
					<h3>个人信息</h3>
					<ul>
						<li><strong>姓名：</strong>林潇</li>
						<li><strong>学历：</strong>深圳大学(2011-2015)本科</li>
						<li><strong>工作年限：</strong>一年</li>
						<li><strong>期望职位：</strong>Java开发</li>
						<li><strong>期望城市：</strong>深圳<!-- 、杭州、上海 --></li>
						<li><strong>Github：</strong><a
							href="https://github.com/Pickacat">https://github.com/Pickacat</a></li>
					</ul>
					<hr>
					<h3>工作经历</h3>
					<ul>
						<li><strong>招商财富CBP综合业务平台迁移项目一期</strong>
							<ul>
								<li>原系统系统是基于JSP和Servlet实现的Web系统，通过Servlet完成Controller和Service功能，却也带来控制层
									Servlet众多，Servlet即做控制层也做业务层的缺点。同时JSP页面也镶嵌了部分Java代码，给维护和二次开发带来了困难。于是迁移到基于MVC架构由Spring
									MVC实现分层，MyBatis实现持久化的新框架。</li>
								<li>将夹杂了 Java 代码的 JSP 页面分离出项目规定的模板 HTML 页面，并将相关业 务代码迁移至
									Service 层。</li>
								<li>把同一功能模块 Servlet 通过 SpringMVC 的 URL 映射整合到一个 Controller 当
									中。</li>
								<li>原有的 JDBC 操作数据库改用 DAO 层实现，SQL 语句重写在 MyBatis 的 XML 配
									置文件中。</li>
								<li>前端统一使用项目组封装的组件进行数据展示或后台交互。</li>
								<li>本人负责完成托管行取数分析功能模块和合同管理功能模块的迁移。在项目
									时间紧迫的情况下提前完成迁移和测试，给甲方预留充足的验收时间。</li>
							</ul></li>
						<li><strong>中国人寿(海外)保险业务系统接口</strong>
							<ul>
								<li>该系统用于中国人寿（海外）保险的新单业务，方便业务人员进行相关操作，提 高业务人员的工作效率。系统使用了
									Struts2 完成 MVC 分层，Spring 完成 IOC 和 AOP 功能，MyBatis 完成持久层，Dubbo
									做分布式，Axis2 完成对外接口发布。</li>
								<li>接手离职员工开发的接口，并根据业务需求变动做接口的修改，以完成系统 对新业务的拓展并给以前接口编写文档。</li>
								<li>根据新需求开发新的对外接口，如财务需求分析接口、微商城项目接口、UN
									核保影像接口等，完成上级安排的新需求并编写接口相关开发文档。</li>
								<li>必要时与接口调用方工程师沟通，解决接口开发中遇到的相关问题，同时向
									上级汇报开发进度和遇到的问题，按照上级指示完成相关开发。</li>
							</ul></li>
					</ul>
					<hr>
					<h3>个人作品</h3>
					<ul>
						<li><strong>Java Blog</strong>
							<ul>
								<li>开源地址：<a href="https://github.com/Pickacat/Blog">https://github.com/Pickacat/Blog</a></li>
								<li>展示地址：<a href="/home">Java Blog</a></li>
								<li>项目简介：基于Maven+SpringMVC+Spring+MyBatis+Freemarker+Bootstrap的响应式个人博客</li>
							</ul>
							<blockquote>
								<p>项目采用Maven构建，前端使用Bootstrap做响应式，后台采用Freemarker模板技术，SpringMVC负责MVC分层，MyBatis完成数据持久化，SpringAOP完成声明式事务，dbcp做数据库连接池，Shiro安全框架负责用户认证</p>
							</blockquote></li>
						<li><strong>网易微专业作业</strong>
							<ul>
								<li>开源地址：暂不开源</li>
								<li>展示地址：<a href="http://59.111.102.219:8080/">The
										Content Store</a>
								</li>
								<li>项目简介：基于Maven+SpringMVC+Spring+MyBatis+Freemarker的内容销售网站</li>
							</ul>
							<blockquote>
								<p>项目采用Maven构建，SpringMVC完成前后端分离，SpringAOP完成声明式事务，SpringJDBC完成事务管理，dbcp做数据库连接池，日志功能采用log4j，jackson负责将后台数据转为Json</p>
							</blockquote></li>
					</ul>

				</div>
				<!-- /.blog-post -->

			</div>
			<!-- /.blog-main -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<#include "/include/footer.ftl">

</body>
</html>