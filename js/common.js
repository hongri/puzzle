var col;

$(document).ready(function() {
	if($("#container").hasClass('blockflows'))
	{
		$("img").lazyload({ 
			effect : "fadeIn" 
		}); 
		//AjaxImage
		blockflows();
		ayscload();
		searchFilter();
		headerAnimation();
	}
	if($("#container").hasClass('imageslides'))
	{
		imageSlides();
	}
});

function headerAnimation(){
	$('#header')
	.css({ 'top':-50 })
	.delay(500)
	.animate({'top': 0}, 500);
}

//瀑布流
function blockflows(){
	var top = [-2000,-1000,0,1000,2000];
	var left = [-1000,-1500,-2000,-500];
	$("#container .grid").each(function(i,e){
		$(this).css({"top":top[i%3],"left":left[i%3]});
	})
	var currentWidth = 1100;
	$(window).on('load resize',function() {
		var winWidth = $(window).width();
		var conWidth;
		if(winWidth < 660) {
			conWidth = 440;
			col = 2
		} else if(winWidth < 880) {
			conWidth = 660;
			col = 3
		} else if(winWidth < 1100) {
			conWidth = 880;
			col = 4;
		} else if(winWidth < 1320) {
			conWidth = 1100;
			col = 5;
		} else if(winWidth < 1560) {
			conWidth = 1320;
			col = 6;
		} else if(winWidth < 1780) {
			conWidth = 1560;
			col = 7;
		} else {
			conWidth = 1780;
			col = 8;
		}
		currentWidth = conWidth;
		$('#container').width(conWidth);
		$('#container').Blockflows({
			numOfCol: col,
			offsetX: 8,
			offsetY: 8
		});
	});
}

//go top
function goTop(acceleration, time) {
	acceleration = acceleration || 0.1;
	time = time || 16;
	var x1 = 0;
	var y1 = 0;
	var x2 = 0;
	var y2 = 0;
	var x3 = 0;
	var y3 = 0;
	if (document.documentElement) {
		x1 = document.documentElement.scrollLeft || 0;
		y1 = document.documentElement.scrollTop || 0;
	}
	if (document.body) {
		x2 = document.body.scrollLeft || 0;
		y2 = document.body.scrollTop || 0;
	}
	var x3 = window.scrollX || 0;
	var y3 = window.scrollY || 0;
    // 滚动条到页面顶部的水平距离
    var x = Math.max(x1, Math.max(x2, x3));
    // 滚动条到页面顶部的垂直距离
    var y = Math.max(y1, Math.max(y2, y3));
    // 滚动距离 = 目前距离 / 速度, 因为距离原来越小, 速度是大于 1 的数, 所以滚动距离会越来越小
    var speed = 1 + acceleration;
    window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));
	// 如果距离不为零, 继续调用迭代本函数
    if(x > 0 || y > 0) {
        var invokeFunction = "goTop(" + acceleration + ", " + time + ")";
        window.setTimeout(invokeFunction, time);
    }
}	

window.onscroll = function(){
    var scrollElement = document.getElementById('goTop');
    if(scrollElement){
        scrollElement.style.display = (document.documentElement.scrollTop+document.body.scrollTop)?'block':'none';
    }
}

function searchFilter(){
	$("#search input").val('').on('keyup',function(){
		var value = $(this).val().toLowerCase();
		$("#container .grid").each(function(){
			if($(this).attr('data-filtertext').indexOf(value)<0)
				$(this).addClass("filter-hidden");
			else
				$(this).removeClass("filter-hidden");
		})
		$('#container').Blockflows({
			numOfCol: col
		});
	})
}

/*function iphone(){
	window.onorientationchange = function() {
 	    if(window.orientation==90||window.orientation==-90)
 	    {
 	    	$("head").append('<meta name="viewport" content="width=device-width,minimum-scale=1,maximum-scale=1.0,user-scalable=no,initial-scale=0.7" />');
 	    }
 	    else
 	    {
 	    	$("head").append('<meta name="viewport" content="width=device-width,minimum-scale=0.7,maximum-scale=1.0,user-scalable=no,initial-scale=0.7" />');
 	    }
 	}
}
*/

function imageInit(){
	$("#slides .slides_container table,#slides .slides_container table td").css({'height':$(window).height()-100,'width':$(window).width()});
	$("#image_slides").css({'height':$(window).height(),'width':$(window).width()});
}

function paginationAimation(){
	$(".clickToDown").click(function(){
		$(this).hide();
		$(".pagination").slideUp();
		$(".slides_control").height($("#slides table").height()+106);
		$(".clickToUp").show();		
	})
	$(".clickToUp").click(function(){
		$(this).hide();
		$(".pagination").slideDown();
		$(".clickToDown").show();
	})
	/*
	$(".pagination_next").on('click',function(){
		json = JSON.stringify({"id":$(".pagination li:last img").attr('url')});
			$.ajax({
                type:'POST',
				url:'/index/loadNextImage',
				data:json,
				dataType:'json',
				contentType:'application/json; charset=UTF-8',
                success:function(data){
                	for(var i=0;i<data.length;i++)
                	{
                		$(".pagination li:eq(0)").remove();
                		$(".pagination").append('<li><a href="#"><img src="/media/images/big/'+data[i].name+'" number="'+data[i].href+'" url="'+data[i].id+'"></a></li>')
                	}
                	//$(".pagination").animate({'margin-left':'-588px'},3000);
                	$("#slides").find(".pagination img").each(function(){
						var width = $(this).width();
						var height = $(this).height();
						if(width>height||height==0)
						{
							width = width*70/height;
							height = 70;
							var left = (width-height)/2
							$(this).css('margin-left',-left);
						}
						else{
							height = height*70/width;
							width = 70;
							var top = (height-width)/2
							$(this).css('margin-top',-top);
						}
						
						$(this).height(height).width(width);
					})
                }    
            })
	})
	$(".pagination_prev").on('click',function(){
		if(p.css("margin-left")=='-588px')
		{
			p.animate({'margin-left':'0px'},800);
			$(".pagination_prev").addClass("noImage");
		}
		else if(p.css("margin-left")=='-1176px')
		{
			p.animate({'margin-left':'-588px'},800);
			$(".pagination_next").removeClass("noImage");
		}
	})*/
}

function ayscload(){
	//判断最后一个grid是否进入可视区域
    function monitor(gridLast){
        //浏览器可视区域的高度
        var monitor = document.documentElement.clientHeight;    
        //滚动条滑动的距离
        var winScroll = $(this).scrollTop();
        var lastLisee = gridLast.offset().top
        return lastLisee < (monitor+winScroll)?true:false;        
    }
    
    //是否发出AJAX；
    var flag = true;
            
    $(window).scroll(function(){ 
        //调用是否进入可视区域函数
        var isMonitor = monitor($(".grid:last"));
        if(isMonitor && flag){
            flag = false;
            //发送AJAX请求，载入新的图片
            json = JSON.stringify({"number":$(".grid").length});
            $.ajax({
                type:'POST',
				url:'/index/getImage',
				data:json,
				dataType:'json',
				contentType:'application/json; charset=UTF-8',
                success:function(data){
                	for(var i=0;i<data.length;i++)
                	{
                		$(".blockflows").append('<div class="grid" data-filtertext="'+data[i].keywords+'"><div class="imgholder"><a href="/index/image/'+data[i].id+'" target="_blank"><img src="/media/images/middle/'+data[i].name+'" /></a></div><p><a href="/index/image/'+data[i].id+'" target="_blank">'+data[i].title+'</a></p></div>')
                	}
                	$('#container').Blockflows({
						numOfCol: col,
						offsetX: 8,
						offsetY: 8
					});
					if(data=='')
						flag = false;
					else
						flag = true;
                }    
            })
        }
    });  
}

function loadImage(){
	var index = $(".pagination li.current").index();
	var count = $(".pagination li").length;

	$(".pagination li.current img").attr('src',$(".pagination li.current img").attr("data-src"));
	$(".slides_container table:eq("+index+") img").attr('src',$(".slides_container table:eq("+index+") img").attr("data-src"));

	if(index == 0)
	{
		$("#slides .prev").hide();
	}
	if(index == count-1)
	{
		$("#slides .next").hide();
	}
	if(index<7)
	{
		for(var i=0; i<14; i++)
		{
			$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
			$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
		}
		/*
		for(var i=Math.floor(count/7)*7-7; i<count; i++)
		{
			$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
			$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			$(".pagination").animate({'margin-left':-588*Math.floor(count/7)},100);
		}*/
	}
	else if(index >= Math.floor(count/7)*7){
		for(var i=Math.floor(count/7)*7-7; i<count; i++)
		{
			$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
			$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			$(".pagination").stop().animate({'margin-left':-588*Math.floor(count/7)},100);
		}
		/*
		for(var i=0; i<7; i++)
		{
			$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
			$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
		}
		*/
	}
	else{
		for(var i=Math.floor(index/7)*7-7; i<Math.floor(index/7)*7+14; i++)
		{
			$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
			$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			$(".pagination").stop().animate({'margin-left':-588*Math.floor(index/7)},100);
		}
	}
	$(".pagination_next").click(function(){
		$(".pagination_prev").removeClass("noImage");
		var left = parseInt($(".pagination").css("margin-left"))-588;
		var col = -left/588;
		if(col*7+7<count)
		{
			for(var i=col*7+6; i<col*7+14; i++)
			{
				$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
				$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			}
			/*
			for(var i=7; i<14; i++)
			{
				$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
				$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			}*/
		}
		if(col*7<count)
			$(".pagination").stop().animate({'margin-left':left},500);
		else
			$(".pagination_next").addClass("noImage");

	})
	$(".pagination_prev").click(function(){
		$(".pagination_next").removeClass("noImage");
		var left = parseInt($(".pagination").css("margin-left"))+588;
		var col = -left/588;
		if(col>0)
		{
			for(var i=col*7-7; i<col*7; i++)
			{
				$(".pagination li:eq("+i+") img").attr('src',$(".pagination li:eq("+i+") img").attr("data-src"));
				$(".slides_container table:eq("+i+") img").attr('src',$(".slides_container table:eq("+i+") img").attr("data-src"));
			}
		}
		if(col>0)
			$(".pagination").stop().animate({'margin-left':left},500);
		else
			$(".pagination_prev").addClass("noImage");

	})

	$("#slides .next").click(function(){
		$("#slides .prev").show();
		var cur = $(".pagination li.current").index();
		if(cur == count-1)
		{
			$("#slides .next").hide();
		}
		if(cur%7==0)
			$(".pagination_next").trigger("click");

	})
	$("#slides .prev").click(function(){
		$("#slides .next").show();
		var cur = $(".pagination li.current").index();		
		if(cur == 0)
		{
			$("#slides .prev").hide();
		}
		if(cur%7==0)
		{
			$(".pagination_prev").trigger("click");
		}
	})
	$(".pagination li a").click(function(){
		var cur = $(".pagination li.current").index();		
		if(cur == 0)
		{
			$("#slides .prev").hide();
		}
		else if(cur == count-1)
		{
			$("#slides .next").hide();
		}
		else{
			$("#slides .prev").show();
			$("#slides .next").show();
		}
	})
}


