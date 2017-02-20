<!DOCTYPE html>
<!-- saved from url=(0042)http://v3.bootcss.com/examples/dashboard/# -->
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/admin_home.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="/css/home.css" rel="stylesheet">

  <body>

	<!-- 导航系统 -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
      	<!-- 顶部导航 -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./Dashboard Template for Bootstrap_files/Dashboard Template for Bootstrap.html">Blog front end</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          	<!-- 全文查询，暂时不做 -->
<!--           <form class="navbar-form navbar-right"> -->
<!--             <input type="text" class="form-control" placeholder="Search..."> -->
<!--           </form> -->
        </div>
        
      </div>
    </nav>

	<!-- 侧边栏 -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-2 col-md-1 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/admin/home">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Add blog</a></li>
            <li><a href="#">Export</a></li>
          </ul>
          <!-- 分组导航，暂时不需要 -->
 <!--          <ul class="nav nav-sidebar">
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
          </ul> -->
        </div>
        
        <!-- 右侧主体显示区 -->
        <div class="col-sm-10 col-sm-offset-2 col-md-11 col-md-offset-1 main">

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

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="/js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/js/ie10-viewport-bug-workaround.js"></script>
  

</body></html>