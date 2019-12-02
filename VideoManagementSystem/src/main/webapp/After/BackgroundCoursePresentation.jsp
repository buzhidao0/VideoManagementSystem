<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0052)http://localhost:8080/Voids/controller/courseShow.do -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--<base href="http://localhost:8080/Voids/">--><base href=".">
		
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>智游教育</title>

<link href="${pageContext.request.contextPath }/Resource/bootstrap/css/bootstrap.css" rel="stylesheet">

<script src="${pageContext.request.contextPath }/Resource/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/Resource/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/Resource/js/confirm.js"></script>
<script src="${pageContext.request.contextPath }/Resource/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/Resource/js/message_cn.js"></script>

<style type="text/css">
	th {
		text-align: center;
	}
</style>
</head>

<body>
	<b>后台课程展示</b>
	
<nav class="navbar-inverse">
	<div class="container">
		
		<div class="navbar-header">
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a>视频管理</a></li>
				<li><a>主讲人管理</a></li>
				<li class="active"><a>课程管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>admin</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a  class="navbar-link">退出</a>
			</p>
		</div>
		<!-- /.navbar-collapse -->

	</div>
	<!-- /.container-fluid -->
</nav>

<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
  <div class="container">
	<h2>课程管理</h2>
  </div>
</div>
	
<form action="http://localhost:8080/Voids/Course/deleteall.do">
	<div class="container">
	    <button onclick="showAddPage()" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      添加
		</button>
		
		<button onclick="deleteAll()" type="submit" id="btn" class="btn btn-info dropdown-toggle">
		      批量删除
		</button>
	</div>
	
	<div class="container" style="margin-top: 20px;">
		
	<table class="table table-bordered table-hover" style="text-align: center;table-layout:fixed;">
	<thead>
        <tr class="active">
          <th><input type="checkbox" id="all"></th>
          <th>序号</th>
          <th style="width:16%">标题</th>
          <th style="width:60%">简介</th>
          <th>编辑</th>
          <th>删除</th>
        </tr>
	</thead>
      
	<tbody>
        <tr>
          <td><input type="checkbox" ></td>
          <td>6</td>
          <td>Web前端入门小项目</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">适合无编程基础但想学H5前端开发的同学入门学习，也适合UI、Java、PHP等其他学科学员预习或练习。本课程通过新闻页面、个人主页、个人简历、场景秀等多个项目案例由浅入深以项目实战的方式让同学们体验到前端开发乐趣。本课程突出实战，如果希望深入学习课程中涉及到的知识可报名学习智游前端开发课程。</td>
          <td><a>✎</a></td>
          <td><a onclick="deletee(&#39;6&#39;)" >X</a></td>
		</tr>
        
        <tr>
          <td><input type="checkbox"></td>
          <td>7</td>
          <td>前端开发与Git入门</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Git是一款免费、开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。经过本章课程学习你将轻松入门，学会使用Git管理自己的源代码，让自己的开发之路井井有条，想进一步学习Git进阶部分的同学可报名智游前端开发课程。</td>
          <td><a>✎</a></td>
          <td><a onclick="deletee(&#39;7&#39;)" >X</a></td>
          </tr>
        
        <tr>
          <td><input type="checkbox"></td>
          <td>8</td>
          <td>每天20分钟轻松入门React</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">适合有一定HTML+JS基础、想学习React的同学。本课程循序渐进、浅显易懂，非常适合React入门学习。想进一步学习和使用React进行开发的同学可以报名智游前端开发课程。</td>
          <td><a>✎</a></td>
          <td><a onclick="deletee(&#39;8&#39;)" >X</a></td>
		</tr>
        
        <tr>
          <td><input type="checkbox"></td>
          <td>9</td>
          <td>UI基础入门</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">适合无设计基础但想学UI设计的同学学习。本课程零基础入门，扎实的软件基础、高端的图形创意、资深产品经理的面对面授课尽在智游UI设计课程，希望成为全能设计师的你可报名智游UI设计课程。</td>
          <td><a>✎</a></td>
          <td><a onclick="deletee(&#39;9&#39;)" >X</a></td>
		</tr>
        
        <tr>
          <td><input type="checkbox"></td>
          <td>11</td>
          <td>Python编程零基础入门</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">适合无编程基础但想学Python的同学学习。本课程完全零基础入门，如果希望深入学习Python开发可报名学习智游Python企业开发课程。</td>
          <td><a>✎</a></td>
          <td><a onclick="deletee(&#39;11&#39;)">X</a></td>
		</tr>
        
        <tr>
        	<td colspan="2">
        		<font>总共6条,当前第1页</font>
				<a href="">1</a>&gt;
				<a href="">2</a>&gt;
        	</td>
        </tr>
	</tbody>
	</table>
    
	</div>
</form>

<div id="modal-background" class=""></div>
<div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1">
	<div class="modal-dialog modal-undefined">
		<div class="modal-content">
			<div class="modal-header">
				<button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button">
					<span aria-hidden="true">×</span>
				</button>
				<h4 id="modal-title" class="modal-title">Modal Title</h4>
			</div>
			<div id="modal-body" class="modal-body"> Modal Message </div>
			<div id="modal-footer" class="modal-footer"></div>
		</div>
	</div>
</div>
<div id="modal-background" class=""></div>

</body>

<script type="text/javascript">
	function showAddPage(){
		location.href="Course/addCourse.do";
	}
	function delCourseById(Obj,id,title){

		Confirm.show('温馨提示：', '确定要删除'+title+'么？', {
			'Delete': {
				'primary': true,
				'callback': function() {
					var param={"id":id};
					$.post("admin/course/delCourse.action",param,function(data){
						if(data=='success'){
							Confirm.show('温馨提示：', '删除成功');
							$(Obj).parent().parent().remove();
						}else{
							Confirm.show('温馨提示：', '操作失败');
						}
					});
				}
			}
		});
	}
</script>
 
</html>