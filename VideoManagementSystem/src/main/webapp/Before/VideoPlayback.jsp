<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0084)http://localhost:8080/Voids/user/VideoGo.do?id=218&subjectName=WEB%E5%89%8D%E7%AB%AF -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--<base href="http://localhost:8080/Voids/">--><base href=".">
 
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">

<!--<base href="http://localhost:8080/Voids/">--><base href=".">
<meta name="renderer" content="webkit">
<meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
<meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">

<link rel="stylesheet" href="${pageContext.request.contextPath }/Resource/z/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/Resource/z/css.css">
<link rel="icon" href="${pageContext.request.contextPath }/Resource/z/favicon.png" type="image/png">
<link href="./视频播放_files/video-js.css" rel="stylesheet" type="text/css">
<title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body class="w100" style="padding-top: 0px;">
	<b>视频播放</b>

<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>
			
			<div id="userBlock" style="float:right">
				<a >退出</a>
				<a >1@qq.com</a>
			</div>

		<a onclick="JavaScript:addFavorite2()"><img src="${pageContext.request.contextPath }/Resource/z/sc.png" draggable="false">加入收藏</a>
		
		<a target="_blank"><img src="${pageContext.request.contextPath }/Resource/z/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="${pageContext.request.contextPath }/Resource/z/phone.png" draggable="false"> 0371-88888598　　4006-371-555</a>

	</div>
</header>

<div>
    <!--面包屑导航-->
    <div class="container mian-nav">公开课 / WEB前端</div>
    <input id="videoId" value="246" type="hidden">
    <div id="content">

<div class="intro">
	<div class="container">
		<div class="v-intro">
			<div class="left">
				<video id="videoPlayer" src="http://vod.zhiyou100.com/gkk/h5/c1/01.mp4" class="video-js vjs-default-skin" controls="controls" poster="static/z/02.jpg" data-setup="{}" height="280" width="627">
				</video>
			</div>

			<div class="right">
				<p class="right-title">HTML页面基本结构</p>
				<div class="avatar">
					<span style="background-image: url(http://vod.zhiyou100.com/gkk/teacher/zgd.jpg)"></span>
					<p><b>讲师：赵桂丹</b><br><i>H5第1期学员，毕业后留校任助教职务。精通H5课程内容，先后参与过智游教育网站、移动网站、微网站、课时管理系统等多个项目的开发工作。</i></p>
				</div>
				<p class="video-intro">
					<span>本节内容：</span>前端开发主要技术和在项目中的作用、HTML标签基本结构、HTML文档基本结构、字符编码问题及开发一个简单的页面。
				</p>
			</div>
		</div>

		<div class="kcjs">
			<p class="title">课程介绍</p>
			<p class="content">适合无编程基础但想学H5前端开发的同学入门学习，也适合UI、Java、PHP等其他学科学员预习或练习。本课程通过新闻页面、个人主页、个人简历、场景秀等多个项目案例由浅入深以项目实战的方式让同学们体验到前端开发乐趣。本课程突出实战，如果希望深入学习课程中涉及到的知识可报名学习智游前端开发课程。</p>
		</div>

	</div>
</div>
<!--目录-->
<div class="catalog">
	<div class="container">
		<p class="title">目录</p>
		<c:forEach var="l" items="${list }">
		<div class="chapter">
			<p class="biaoti">
				<a href="http://localhost:8080/Voids/user/VideoGo.do?id=0&amp;subjectName=WEB%E5%89%8D%E7%AB%AF">前端开发环境搭建</a>
			</p>
			<p class="lecturer">${l.speaker_desc }前端开发环境的搭建，包括前端常用开发工具介绍、VS Code下载安装，以及前端开发常用运行工具--浏览器的介绍、Firefox下载安装等内容。帮助大家准备好前端开发环境以便深入学习后续小项目</p>
			<p class="lecturer">${l.id }讲师：赵桂丹</p>
			<div class="v-info">
				<span class="count"><img src="${pageContext.request.contextPath }/Resource/z/count.png" alt="">433</span>
				<span class="duration"><img src="${pageContext.request.contextPath }/视频播放_files/player.png" alt="">562</span>
			</div>
		</div>
		</c:forEach>

	</div>
</div>
</div>

</div>
    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="${pageContext.request.contextPath }/Resource/z/footer_logo.png" alt="" draggable="false">
		</li>
		<li class="mt25">
			<h3>各校区地址</h3>
			<ul>
				<li>总部地址<br>中国-郑州经济技术开发区河南省通信产业园六层</li>
				<li>郑州校区一<br>中国-郑州经济技术开发区第一大街与经北一路</li>
				<li>郑州校区二<br>中国-郑州经济技术开发区第四大街经开人才市场七楼</li>
				<li>郑州校区三<br>中国-郑州经济技术开发区第八大街河南省留学生创业园九层、十层</li>
				<li>西安分校<br>中国-西安莲湖区　联系人：梁老师 13201570801</li>
			</ul>
		</li>
		<li class="mt25">
			<h3>联系我们</h3>
			<ul id="foo_icon">
				<li>中国-郑州经济技术开发区经北三路河南通信产业园六层</li>
				<li>e-mail:zy@zhiyou100.com</li>
				<li>电话:4006-371-555 0371-88888598</li>
				<li class="erwei">
					<br>
					<div>
						<img class="weixin" src="${pageContext.request.contextPath }/Resource/z/a.png" alt="" draggable="false">
						<img class="weibo" src="${pageContext.request.contextPath }/Resource/z/a_002.png" alt="" draggable="false">
					</div>
				</li>
			</ul>
		</li>
	</ul>
	<div class="record">智游教育 © 豫ICP备17000832号-1 　河南智游臻龙教育科技有限公司</div>
</footer>

<!--登录注册弹出框-->
<div class="mask hidden" id="login">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="${pageContext.request.contextPath }/Resource/z/footer_logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="http://localhost:8080/Voids/#">
				<h3>快速登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email">
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div>
				<input onclick="return commitLogin()" value="登　录" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="login_close">关　闭</span>
		</div>
	</div>
</div>
<div class="mask hidden" id="reg">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="${pageContext.request.contextPath }/Resource/z/footer_logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="http://localhost:8080/Voids/user/insertUser.action">
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span id="emailMsg"></span>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="passMsg"></span>
				<div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;">
						<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
						<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
					</div>
				</div>
				<input onclick="return commitRegForm();" value="注　册" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="reg_close">关　闭</span>
		</div>
	</div>
</div>

<script src="${pageContext.request.contextPath }/Resource/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/Resource/js/gVerify.js"></script>
<script src="${pageContext.request.contextPath }/Resource/js/index.js"></script>
<script src="./视频播放_files/video.js.下载"></script>
   
</body>
</html>