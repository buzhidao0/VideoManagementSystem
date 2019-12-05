<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0046)http://localhost:8080/Voids/user/userUpdate.do -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--<base href="http://localhost:8080/Voids/">--><base href=".">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
<meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">

<link rel="stylesheet" href="${pageContext.request.contextPath }/WbYx/Resource/z/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/WbYx/Resource/js/profile.css">
<link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png" type="image/png">
<title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>
<body class="w100">
<header>
	<div class="container top_bar clearfix">
		<img src="${pageContext.request.contextPath }/WbYx/Resource/z/logo.png" alt="智游">
		<div id="tele">
			<span>4006-371-555</span>
			<span>0371-88888598</span>
		</div>
	</div>
	<menu>
		<div class="container clearfix">
			<ul class="clearfix f_left">
				<li>
					<a href="${pageContext.request.contextPath }/WbYx/Before/OpenOnlineCourse.jsp">首页</a>
				</li>
				<li class="menu_active">
					<a href="showEachCenter">个人中心</a>
				</li>
			</ul>
			<div id="user_bar">
				<a href="showEachCenter">
					<img id="avatar" src="${pageContext.request.contextPath }/WbYx/Resource/z/avatar_lg.png" alt="">
				</a>
				<a href="${pageContext.request.contextPath }/WbYx/Before/OpenOnlineCourse.jsp">退出</a>
			</div>
		</div>
	</menu>
</header>

     <main>
        <div class="container">
            <h2>我的资料</h2>
            <div id="profile_tab">
                <ul class="profile_tab_header f_left clearfix">
                    <li><a href="updateUserByAccounts?accounts=${user.accounts }">更改资料</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="ModifyThePicture?accounts=${user.accounts }">更改头像</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="ChangeThePassword?accounts=${user.accounts }">密码安全</a></li>
                </ul>
                <div class="proflle_tab_body">
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
                                <img src="${pageContext.request.contextPath }/WbYx/Resource/z/avatar_lg.png" width="200px;">
                        </div>
                        <div class="profile_ifo_area">
                            <form action="EachCenter" method="post">
                                <div class="form_group">
                                    <span class="dd">昵　称：</span>
                                    <input name="nickname" type="text" value="${user.nickname }">
                                </div>
                                <div class="form_group">
                                    <span class="dd">性　别：</span>
                                    <input id="man" name="sex" value="男" checked="${user.sex == true ? checked : false }" type="radio">
                                    <label for="man">男</label>
                                    <input id="woman" name="sex" value="女" checked="${user.sex == false ? checked : true }" type="radio">
                                    <label for="woman">女</label>
                                </div>
                                <div class="form_group">
                                    <span class="dd">生　日：</span>  <!-- 1990-10-04 -->
                                    <input name="birthday" type="text" value="${user.birthday }">
                                </div>
                                <div class="form_group">
                                    <span class="dd">邮　箱：</span>
                                    <input type="text" name="accounts" value="${sessionKey.accounts }" readonly="readonly">
                                </div>
                                <div class="form_group">
                                    <span class="dd">所在地：</span>
                                    
                                <div id="city">
								<select class="prov"></select> 
								<select class="city" disabled="disabled"></select>
								</div>
								<input name="address" id="address" value="${user.address }" type="hidden">
								<input name="createtime"  type="hidden" value="${user.createtime }">
                                    
                                    <input name="address" id="address" type="hidden">
                                </div>
                                <div class="form_submit dd">
                                    <input onclick="return commitForm();" value="保　存" type="submit">
                                    <a href="updateUserByAccounts?accounts=${sessionKey.accounts }">重置</a>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

<script type="text/javascript">
	// 1.选中省份下拉框
	var prov = document.getElementById("prov");
	// 2.绑定 域内容改变事件 onchange
	prov.onchange = function() {
		// 3.获得当前选择的省份 值value
		var pro = prov.value
	// 4.根据选择的省份修改后面城市下拉框中的option
		// 4.1 获取到城市下拉框对象
		var city = document.getElementById("city");
		// 4.2 判断是具体哪个省份
		if(pro == "河南") {
			// 4.3 将option中的内容修改为对应省份的城市
			city.innerHTML = "<option>郑州</option><option value='kf'>开封</option><option value='ly'>洛阳</option><option value="平顶山">平顶山</option><option value="安阳">安阳</option><option value="鹤壁">鹤壁</option><option value="新乡">新乡</option><option value="焦作">焦作</option><option value="濮阳">濮阳</option><option value="许昌">许昌</option><option value="漯河">漯河</option><option value="三门峡">三门峡</option><option value="南阳">南阳</option><option value="商丘">商丘</option><option value="信阳">信阳</option><option value="周口">周口</option><option value="驻马店">驻马店</option><option value="济源">济源</option>";
		}else if(pro == "hb") {
			city.innerHTML = "<option>石家庄</option><option>唐山</option><option>秦皇岛</option>";
		}else if(pro == "bj") {
			city.innerHTML="<option>朝阳区</option><option>海淀区</option><option>东城区</option>"
		}
		
	}
</script>

<footer>
	<div class="container">
		<ul>
			<li><img src="${pageContext.request.contextPath }/WbYx/Resource/z/footer_logo.png" alt="" id="foot_logo"></li>
			<li>版权所有：智游3G教育　　　© &nbsp;&nbsp; http://www.zhiyou.com</li>
			<li><img src="${pageContext.request.contextPath }/WbYx/Resource/z/a.png" alt="" id="wxgzh"></li>
		</ul>
	</div>
</footer>
    
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/gVerify.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/index.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/WbYx/Resource/city/jquery-3.3.1.min.js"></script>>
<script src="${pageContext.request.contextPath }/WbYx/Resource/city/jquery.cityselect.js"></script>

<script type="text/javascript">
	$(function(){
		$("#city").citySelect(); 
	});
	function commitForm(){
		var address= $(".prov").val()+"-"+$(".city").val();
		$("#address").val(address);
		// $("form").commit();
		return true;
	}
</script>
<script type="text/javascript">

$(function(){

	var sex = '';
	$("input[name='sex']").each(function(i,obj){
		//obj是dom对象     不是jquery对象
		//alert(obj+","+i);
		//alert(obj.value+","+sex);
		if($(obj).val()==sex){
			// obj.checked=true;
			$(obj).attr("checked",true);
		}
	});

	var address =''; //""  河南-郑州

	if(null!=address && address!=""){
		var arr=address.split("-");

		$("#city").citySelect({
			prov: arr[0],  //默认省份
			city: arr[1],  //默认城市
			nodata: "none"
		});
	}else{
		$("#city").citySelect({
			prov: "河南",  //默认省份
			city: "郑州",  //默认城市
			nodata: "none"
		});
	}

});

function commitForm(){

	var address= $(".prov").val()+"-"+$(".city").val();

	$("#address").val(address);

	// $("form").commit();
	return true;
}
</script>

</body>
</html>