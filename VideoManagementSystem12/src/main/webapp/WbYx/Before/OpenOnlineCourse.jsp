<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--<base href="http://localhost:8080/Voids/">-->
	<base href=".">
    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/WbYx/Resource/z/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/WbYx/Resource/z/css.css">
	<link rel="icon" href="http://localhost:8080/VideoManagementSystem2/WbYx/Resource/z/favicon.png" type="image/png">
	<title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>
<body class="w100" style="padding-top: 0px;">
<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>

			<div id="userBlock" style="float:right">
				<c:if test="${!empty sessionKey}">
					<img alt="头像加载失败" src="${sessionKey.imgurl }">${sessionKey.accounts }
					<a href="exit">退出</a>
					<a href="showEachCenter?accounts=${sessionKey.accounts }">
						<img src="${pageContext.request.contextPath }/Resource/z/user.png" draggable="false">个人中心</a>
				</c:if>
				<c:if test="${empty sessionKey}">
				<a id="login_open"><img src="${pageContext.request.contextPath }/WbYx/Resource/z/we.png">登录</a>
				</c:if>
<%-- 				href="${pageContext.request.contextPath }/index.jsp" --%>
				<c:if test="${empty sessionKey}">
					<a id="reg_open"><img src="${pageContext.request.contextPath }/WbYx/Resource/z/user.png">注册</a>
				</c:if>
			</div>
		<a onclick="JavaScript:addFavorite2()"><img src="${pageContext.request.contextPath }/WbYx/Resource/z/sc.png" draggable="false">加入收藏</a>
		<a target="_blank" href="http://localhost:8080/Video/controller/adminLogin.do"><img src="${pageContext.request.contextPath }/Resource/z/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="${pageContext.request.contextPath }/WbYx/Resource/z/phone.png" draggable="false"> 0371-88888598　　4006-371-555</a>
		
	</div>
</header>

    <!--banner图-->
    <div class="banner index-banner">
	<img alt="" src="${pageContext.request.contextPath }/WbYx/Resource/z/banner-2.jpg">
	</div>
	
    <!--模块化课程-->
    <div class="course">
        <div class="container">
            <p class="title">模块化课程，从入门到精通，大神并不遥远</p>
            <div class="course-info">
                <table cellspacing="10">
                    <tbody><tr>
                        <td colspan="2">
                            <a >
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/html5.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>Web前端教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td>
                            <!--上线时修改id-->
                            <a >
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/ui.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>UI设计教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td rowspan="2" class="one_three">
                            <a  class="opacity5">
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/java.jpg" alt="" class="image" draggable="false">
                                <div class="headline">
                                    <span>Java教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a  class="opacity5">
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/bigdata.jpg" alt="" class="image" draggable="false">
                                <div class="headline">
                                    <span>大数据教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td colspan="2">
                            <a >
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/python.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>Python教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <a>
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/php.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>PHP教程</span>
                                    <img src="${pageContext.request.contextPath }/WbYx/Resource/z/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td colspan="2" class="three_two">
                            <img src="${pageContext.request.contextPath }/WbYx/Resource/z/qidai.jpg" alt="" class="image" draggable="false">
                            <div class="headline">
                               	 更多课程，敬请期待...
                            </div>
                        </td>
                    </tr>
                </tbody></table>
                <!--马上试听-->
                <a onclick="pyRegisterCvt()" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2580094677&amp;site=qq&amp;menu=yes">
                    <div class="audition">高级课程</div>
                </a>
            </div>
        </div>
    </div>


    <!--报名表单-->
    <div class="form_area">
        <div class="container">
            <p class="title"><b>这个世界上可以选择的很多，可以改变命运的选择很少<br>你现在准备好向梦想出发了吗？</b></p>
            <form id="iform" action="http://localhost:8080/090/plus/dmail.php" enctype="multipart/form-data" method="post">
                <div class="form_line1"></div>
                <div class="form_line2"></div>
                <div class="wrap">
                    <input name="action" value="post" type="hidden">
                    <input name="diyid" value="3" type="hidden">
                    <input name="do" value="2" type="hidden">
                    <input name="ip" value="" type="hidden">
                    <input name="time" value="" type="hidden">
                    <div><label for="name">姓名：</label><input name="name" id="name" class="form-control" type="text"></div>
                    <div><label for="tel">手机号：</label><input name="tel" id="tel" class="form-control" type="text"></div>
                    <div><label for="qq">QQ：</label><input name="qq" id="qq" class="form-control" type="text"></div>
                </div>
                <input class="button" value="立即报名" type="submit">
            </form>
        </div>
    </div>

    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="${pageContext.request.contextPath }/WbYx/Resource/z/footer_logo.png" alt="" draggable="false">
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
						<img class="weixin" src="${pageContext.request.contextPath }/WbYx/Resource/z/a_002.png" alt="" draggable="false">
						<img class="weibo" src="${pageContext.request.contextPath }/WbYx/Resource/z/a.png" alt="" draggable="false">
						
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
			<img src="${pageContext.request.contextPath }/WbYx/Resource/z/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="WbYx/Login">
				<h3>快速登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="accounts" type="email">
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<div id="forget">
					<a href="forgetPassword">忘记密码？</a>
				</div>
				<input value="登　录" type="submit">
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
			<img src="${pageContext.request.contextPath }/WbYx/Resource/z/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="WbYx/insertUser">
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="accounts" type="email" onblur="onAccounts()"><span id="emailMsg"></span>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="passMsg"></span>
				<div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;">
						<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
						<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
					</div>
				</div>
				<input value="注　册" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="reg_close">关　闭</span>
		</div>
	</div>
</div>


    
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/gVerify.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/index.js"></script>

<script type="text/javascript">
	function onAccounts() {
		$.ajax({
			url:"selectByAccounts",
			type:"POST",
			data:{
				accounts:$("#accounts").val()
			},
			success:function(data){
				if (data == "false") {
					$("i").text("抱歉，该用户名已存在了！");
				} else {
					$("i").text("您可以使用");
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown) {
				alert(testStatus);
			}
		});
	};
</script>
</body>
</html>