$(document).ready(function() {

	'use strict';

	var sidebar = $('#sidebar'); // 选择侧栏
	var mask = $('.mask');
	var back2topBtn = $('.back2top');
	var sidebar_trigger = $('#sidebar_trigger');

	// 点击菜单（meun）按钮出现菜单栏，同时添加一层暗色
	sidebar_trigger.on('click', showSidebar);

	// 点击暗色层，隐藏侧栏
	mask.on('click', hideSidebar);

	// 返回顶部功能
	back2topBtn.on('click', function() {
		$('html,body').animate({
			scrollTop : 0
		}, 800)
	});

	// 在页面开始处时，隐藏返回按钮
	$(window).on('scroll', function() {
		if ($(window).scrollTop() > $(window).height()) {
			back2topBtn.fadeIn();
		} else {
			back2topBtn.fadeOut();
		}
	})

	// 因为刷新页面返回按钮还在，所以一开始就触发滚动事件，来隐藏back2top按钮
	$(window).trigger('scroll');

	function showSidebar() {
		mask.fadeIn(); // 加一层暗色
		sidebar.css('right', 0);// 出现侧栏
	}

	function hideSidebar() {
		mask.fadeOut();
		sidebar.css('right', -sidebar.width());
	}

});