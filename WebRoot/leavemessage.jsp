<%@page import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="model.MessBoar" %>
<%@page import="dao.*" %>
<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>我要留言</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style type="text/css" >
  #master1 {
      position:absolute;
      left:20%;
      color:white;
   }
  #master {
      position:absolute;
      right:5%;
      bottom:0;
      color:white;
   }
   </style>
</head>
<script language="javascript">
      function checkForm(form){
          if(form.name.value==''){
              alert('留言标题不能为空');
              return false;
          }
          if(form.message.value==''){
              alert('留言内容不能为空');
              return false;
          }
          return true;
      }
</script>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="main.jsp">留言板</a>
     <div id="master" >
	<a><%= (String)session.getAttribute("login") %>,&nbsp;欢迎访问BobHuang开发的留言板</a>
 	</div>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
   <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">添加留言</div>
      <div class="card-body">
        <form action="leaveMessage"  onsubmit="return checkForm(this);" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">标题</label>
                <input name="title" class="form-control" id="exampleInputName" type="text" aria-describedby="textHelp" placeholder="请输入留言标题">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">内容</label>
            <input name="message" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="textHelp" placeholder="请输入留言内容">
          </div>
          <button type="submit" class="btn btn-primary btn-block">添加</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/main">返回留言界面</a>
        </div>
      </div>
    </div>
  </div>
     <div id="master" >
	<a>Copyright © 2018 TZC-BobHuang
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          	Time:
          <%=new java.util.Date()%></a>
 	</div>
</body>

</html>
