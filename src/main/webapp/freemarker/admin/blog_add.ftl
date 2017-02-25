<!DOCTYPE html>
<!-- saved from url=(0042)http://v3.bootcss.com/examples/dashboard/# -->
<html lang="zh-CN">
<head>
<#include "/include/admin_head.ftl">
</head>
<body>
	<!-- 顶部导航系统 -->
	<#include "/include/admin_nav_top.ftl">

	<div class="container-fluid">
		<div class="row">

			<!-- 右侧主体显示区 -->
			<div class="col-sm-6 col-md-12 main">
				<!-- 博客文章div -->
				<div id="form-div">
					<label class="text-warning">Tools</label>
					<select id="editormd-theme-select">
                        <option selected="selected" value="">select Editor.md themes</option>
                    </select>
                    <label class="text-warning">Editor</label>
                    <select id="editor-area-theme-select">
                        <option selected="selected" value="">select editor area themes</option>
                    </select>
                    <label class="text-warning">Preview</label>
                    <select id="preview-area-theme-select">
                        <option selected="selected" value="">select preview area themes</option>
                    </select>
					<!-- 表单提交区 -->
					<form role="form" class="form-inline" name="blogForm" id="blogForm">
						<!-- 博客标签 -->
						<div class="form-group" id="tags">
							<label for="tags" class="text-warning">Tags</label>
							<input type="text" class="form-control" name="tags" placeholder="输入标签后请点击回车键" data-role="tagsinput" />
						</div>
						<!-- 博客标题 -->
						<div class="form-group">
							<label for="title" class="text-warning">Title</label>
							<input type="text" class="form-control" name="title" placeholder="请输入博客标题" />
						</div>
						<!-- 隐藏的md文本 -->
						<input type="hidden" name="md" id="md"/>
						<!-- 隐藏的md生成的html文本 -->
                        <input type="hidden" name="html" id="html"/>
						<!-- 提交按钮 -->
	                    <div class="form-group">
	                        <label for="add-blog-btn" class="text-warning">submit</label>
	                        <input type="button" class="form-control jcala-input" id="add-blog-btn" value="save"/>
	                    </div>
					</form>
                    <!-- markdown书写位置 -->
					<div id="editormd" class="row">
						<textarea style="display: none;"></textarea>
					</div>
				</div><!-- 博客文章div-结束 -->
			</div>
			<!-- 右侧主体显示区-结束 -->

		</div>
	</div>
		<#include "/include/admin_footer.ftl">
		<!-- markdown -->
		<!-- 		<script src="../dist/js/languages/en.js"></script> -->
		<!-- 		<script src="../dist/js/languages/zh-tw.js"></script> -->
		<script src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/editormd.js"></script>
		<script src="/js/bootstrap-tagsinput.min.js"></script>
        <script type="text/javascript">
            var testEditor;
            
            $(function() {
            	// markdown样式修改方法
                function themeSelect(id, themes, lsKey, callback)
                {
                    var select = $("#" + id);
                    
                    for (var i = 0, len = themes.length; i < len; i ++)
                    {                    
                        var theme    = themes[i];
                        var selected = (localStorage[lsKey] == theme) ? " selected=\"selected\"" : "";
                        
                        select.append("<option value=\"" + theme + "\"" + selected + ">" + theme + "</option>");
                    }
                    
                    select.bind("change", function(){
                        var theme = $(this).val();
                        
                        if (theme === "")
                        {
                            alert("theme == \"\"");
                            return false;
                        }
                        
                        console.log("lsKey =>", lsKey, theme);
                        
                        localStorage[lsKey] = theme;
                        callback(select, theme);
                    }); 
                    
                    return select;
                }

                	// 加载markdown编辑器
                    testEditor = editormd("editormd", {
                        width: "100%",
                        height: 740,
                        path : '../lib/',
                        theme : "dark",					//工具栏样式
                        previewTheme : "dark",			//生成markdown文本样式
                        editorTheme : "pastel-on-dark",	//markdown编写区样式
                        //markdown : md, 			//预加载markdown文本
                        codeFold : true,
                        //syncScrolling : false,
                        saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
                        searchReplace : true,
                        //watch : false,                // 关闭实时预览
                        htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启    
                        //toolbar  : false,             //关闭工具栏
                        //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启
                        emoji : true,
                        taskList : true,
                        tocm            : true,         // Using [TOCM]
                        tex : true,                   // 开启科学公式TeX语言支持，默认关闭
                        flowChart : true,             // 开启流程图支持，默认关闭
                        sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
                        //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
                        //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
                        //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
                        //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
                        //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
                        imageUpload : true,
                        imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                        imageUploadURL : "./php/upload.php",	//图片提交地址
                        onload : function() {
                            console.log('onload', this);
                        }
                });
                // 设置默认样式
               themeSelect("editormd-theme-select", editormd.themes, "theme", function($this, theme) {
                   testEditor.setTheme(theme);
               });
               
               themeSelect("editor-area-theme-select", editormd.editorThemes, "editorTheme", function($this, theme) {
                   testEditor.setCodeMirrorTheme(theme); 
               });
               
               themeSelect("preview-area-theme-select", editormd.previewThemes, "previewTheme", function($this, theme) {
                   testEditor.setPreviewTheme(theme);
               });  	
                	
               // 表单提交方法
               $("#add-blog-btn").click(function(){
					// 把markdown生成的HTML存入form表单隐藏input中
					$("#html").val(testEditor.getHTML());
					// 把编写的markdown文本放入form表单
					$("#md").val(testEditor.getMarkdown());
					
					//获取博客文章标签
					var arr = $(".tag.label.label-info");
					var tagsStr = "";		
					arr.each(function(i){
						if(i == (arr.length-1)){
							tagsStr = tagsStr + $(this).text()
						}else{
							tagsStr = tagsStr + $(this).text() + ","
						}
					})
// 					alert(testEditor.getHTML());
// 					alert(testEditor.getMarkdown());
// 					alert(tagsStr);
					$("#blogForm").attr('action','/admin/blogAdd').submit();
				})
            });
        </script>

</body>
</html>