<!DOCTYPE html>
<html lang="zh-CN">
<#include "/include/head.ftl">
<body>
	<!-- 导航栏 -->
	<#include "/include/nav_top.ftl">

	<!-- 内容栏 -->
    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">Shawn's Blog</h1>
        <p class="lead blog-description">This blog records what i learned.</p>
      </div>

      <div class="row">

        <div class="col-sm-10 blog-main">

          <div class="blog-post">
            <h2 class="blog-post-title">Sample blog post</h2>
            <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>

            <p>啊啊啊啊啊啊啊啊啊</p>
          </div><!-- /.blog-post -->

          <div class="blog-post">
            <h2 class="blog-post-title">文章标题</h2>
            <p class="blog-post-meta">日期 by <a href="#">作者</a></p>

            <p>文章简介</p>
          </div><!-- /.blog-post -->

          <div class="blog-post">
            <h2 class="blog-post-title">New feature</h2>
            <p class="blog-post-meta">December 14, 2013 by <a href="#">Chris</a></p>

            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <ul>
              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
              <li>Donec id elit non mi porta gravida at eget metus.</li>
              <li>Nulla vitae elit libero, a pharetra augue.</li>
            </ul>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
          </div><!-- /.blog-post -->

          <nav>
            <ul class="pager">
              <li><a href="#">Previous</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->

		
		<!-- 侧边栏 -->
		<#include "/include/nav_sidebar.ftl">

      </div><!-- /.row -->

    </div><!-- /.container -->

	<#include "/include/footer.ftl">

</body></html>