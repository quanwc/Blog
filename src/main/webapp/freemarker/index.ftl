<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/static/css/blog.css">
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<title>博客主页</title>
<style type="text/css">
body {
	padding-top: 10px;
	padding-bottom: 40px;
	background-color: #F8F8FF;
	font-family: microsoft yahei;
}
</style>
</head>

<body>
	<!-- 导航 -->
	<div class="container">

		<div class="row" style="padding-top: 10px">
			<div class="col-md-12">
				<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a class="navbar-brand" href="#">博客首页</a></li>
							<li><a class="navbar-brand" href="#">关于博主</a></li>
							<li><a class="navbar-brand" href="#">我的相册</a></li>
							<li><a class="navbar-brand" href="#">资源小站</a></li>
							<li><a class="navbar-brand" href="#">程序人生</a></li>
							<li><a class="navbar-brand" href="#">CSDN</a></li>
						</ul>
						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="请输入要查询的关键字">
							</div>
							<button type="submit" class="btn btn-default">搜索</button>
						</form>
					</div>
				</div>
				</nav>
			</div>
		</div>

		<!-- 侧栏 -->
		<div class="row">
			<div class="col-md-3">

				<!-- 文章分类 -->
				<div class="data_list">
					<div class="data_list_title">
						<img src="/static/images/byType_icon.png" /> 文章分类
					</div>
					<div class="datas">
						<ul>
							<#if blogTypeList??> 
							<c:forEach items="${blogTypeList?? }" var="blogType">
								<li><span><a href="#">${blogType.typeName?? }（${blogType.blogCount?? }）</a></span></li>
							</c:forEach>
							</#if>
						</ul>
					</div>
				</div>
				<!-- 文章存档 -->
				<div class="data_list">
					<div class="data_list_title">
						<img src="/static/images/byDate_icon.png" /> 文章存档
					</div>
					<div class="datas">
						<ul>
							<#if blogList??> 
							<c:forEach items="${blogList?? }" var="blog">
								<li><span><a href="#">${blog.releaseDateStr?? }（${blog.blogCount?? }）</a></span></li>
							</c:forEach>
							</#if>
						</ul>
					</div>
				</div>

				<!-- 友情链接 -->
				<div class="data_list">
					<div class="data_list_title">
						<img src="/static/images/link_icon.png" /> 友情链接
					</div>
					<div class="datas">
						<ul>
							<#if linkList??> 
							<c:forEach items="${linkList?? }" var="link">
								<li><span><a href="${link.linkurl?? }"
										target="_blank">${link.linkname?? }</a></span></li>
							</c:forEach>
							</#if>
						</ul>
					</div>
				</div>


			</div>

			<!-- 正文内容 -->
			<div class="col-md-9">
				<div class="data_list">
					<div class="data_list_title">
						<img src="/static/images/list_icon.png" />&nbsp;最新博客
					</div>
					<div class="datas">
						<ul>

							<li style="margin-bottom: 30px"><span class="title">
									<img alt="文章类型" src="/static/userImages/yuan.jpg"> <a
									href="#">这是一篇测试博客</a>
							</span> <span class="summary">摘要:
									这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
								<span class="img"> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									<a href="#"><img src="/static/userImages/dog.jpg"
										title="dog" alt="dog.jpg" width="823" height="489"
										style="width: 823px; height: 489px;"></a> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									&nbsp;&nbsp;

							</span> <span class="info"> <font color="#999">2016-07-03
										10:39</font> &nbsp;&nbsp; <font color="#33a5ba"><a href="#">阅读</a><font
										color="#999">(404)</font>&nbsp;&nbsp;</font> <font color="#33a5ba"><a
										href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
							</span></li>
							<hr
								style="height: 5px; border: none; border-top: 1px dashed gray; padding-bottom: 10px;" />

							<li style="margin-bottom: 30px"><span class="title">
									<img alt="文章类型" src="/static/userImages/yuan.jpg"> <a
									href="#">这是一篇测试博客</a>
							</span> <span class="summary">摘要:
									这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
								<span class="img"> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog.jpg" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									<a href="#"><img src="/static/userImages/dog.jpg"
										title="dog.jpg" alt="dog.jpg" width="823" height="489"
										style="width: 823px; height: 489px;"></a> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog.jpg" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									&nbsp;&nbsp;

							</span> <span class="info"> <font color="#999">2016-07-03
										10:39</font> &nbsp;&nbsp; <font color="#33a5ba"><a href="#">阅读</a><font
										color="#999">(404)</font>&nbsp;&nbsp;</font> <font color="#33a5ba"><a
										href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
							</span></li>
							<hr
								style="height: 5px; border: none; border-top: 1px dashed gray; padding-bottom: 10px;" />

							<li style="margin-bottom: 30px"><span class="title">
									<img alt="文章类型" src="/static/userImages/yuan.jpg"> <a
									href="#">这是一篇测试博客</a>
							</span> <span class="summary">摘要:
									这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
								<span class="img"> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog.jpg" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									<a href="#"><img src="/static/userImages/dog.jpg"
										title="dog.jpg" alt="dog.jpg" width="823" height="489"
										style="width: 823px; height: 489px;"></a> <a href="#"><img
										src="/static/userImages/dog.jpg" title="dog.jpg" alt="dog.jpg"
										width="823" height="489" style="width: 823px; height: 489px;"></a>
									&nbsp;&nbsp;

							</span> <span class="info"> <font color="#999">2016-07-03
										10:39</font> &nbsp;&nbsp; <font color="#33a5ba"><a href="#">阅读</a><font
										color="#999">(404)</font>&nbsp;&nbsp;</font> <font color="#33a5ba"><a
										href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
							</span></li>
							<hr
								style="height: 5px; border: none; border-top: 1px dashed gray; padding-bottom: 10px;" />
						</ul>
					</div>
				</div>
			</div>

		</div>

		<!-- 脚部 -->
		<div class="row">
			<div class="col-md-12">
				<div class="footer" align="center" style="padding-top: 120px">
					<font>Copyright © 2012-2016 倪升武SSM个人博客系统 版权所有</font>

				</div>
			</div>
		</div>
	</div>
</body>
</html>