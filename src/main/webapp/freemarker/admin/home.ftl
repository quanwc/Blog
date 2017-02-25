<!DOCTYPE html>
<html lang="zh-CN">
<head>
<#include "/include/admin_head.ftl">
</head>
  <body>

	<!-- 顶部导航系统 -->
	<#include "/include/admin_nav_top.ftl">
	
    <div class="container-fluid">
      <div class="row">
      <!-- 侧边栏 -->
     <!--   <div class="col-sm-1 col-md-1 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/admin/home">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Add blog</a></li>
            <li><a href="#">Export</a></li>
          </ul>
           	分组导航，暂时不需要
 	      <ul class="nav nav-sidebar">
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
          </ul> 
        </div>-->
        
         <!-- 右侧主体显示区 -->
<!--         <div class="col-sm-11 col-sm-offset-1 col-md-11 col-md-offset-1 main"> -->
        <div class="col-sm-12 col-md-12 main">

		<!-- 博客列表展示 -->
          <h2 class="sub-header">Blog list</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Tags</th>
                  <th>Date</th>
                  <th>Options</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Spring</td>
                  <td>Spring</td>
                  <td>2017-02-20</td>
                  <td>update</td>
                </tr>
                <tr>
                  <td>Struts</td>
                  <td>Struts</td>
                  <td>2017-02-20</td>
                  <td>update</td>
                </tr>
                <tr>
                  <td>MyBatis</td>
                  <td>MyBatis</td>
                  <td>2017-02-20</td>
                  <td>update</td>
                </tr>
                <tr>
                  <td>Maven</td>
                  <td>Maven</td>
                  <td>2017-02-20</td>
                  <td>update</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <!-- 右侧主体显示区-结束 -->
        
      </div>
    </div>

	<#include "/include/admin_footer.ftl">
</body></html>