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
  <title>登录出错</title>
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

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="main.jsp">留言板</a>
     <div id="master" >
	<a><%= (String)session.getAttribute("login") %>,&nbsp;欢迎访问BobHuang开发的留言板</a>
 	</div>
  </nav>
   <div id="master1">
          <h1>出错啦</h1>
          <p>不好意思，出了些问题。您账号或者密码输入错误。</p>
          <p>其他情况请联系BobHuang：603921454&nbsp;&nbsp;<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=603921454&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:603921454:41" alt="欢迎勾搭" title="欢迎勾搭"></a></p>
          <a href="/">点我返回登录界面</a>
    </div>
     <div id="master" >
	<a>Copyright © 2018 TZC-BobHuang
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          	Time:
          <%=new java.util.Date()%></a>
 	</div>
</body>

</html>
