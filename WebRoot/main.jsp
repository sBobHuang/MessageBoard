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
  <title>留言板</title>
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
      right:10%;
      color:white;
   }
  #master {
      position:absolute;
      right:3%;
      bottom:0;
      color:white;
   }
   </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="/main">留言板</a>
     <div id="master1" >
	<a><%= (String)session.getAttribute("login") %>,&nbsp;欢迎访问BobHuang开发的留言板</a>
        <a href="/logout" style="color:#B0C4DE"><i class="fa fa-fw fa-sign-out"></i>退出</a>
 	</div>
  </nav>
    <div class="container-fluid">
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="/main">留言列表</a>
          &nbsp;&nbsp;
          <a href="leavemessage.jsp">添加留言</a>
        </li>
      </ol>
            <!-- Example Social Card-->
            <%
  			ArrayList<MessBoar> al=new ArrayList<MessBoar>();
  			al= (ArrayList)session.getAttribute("al");
  			for(int i=al.size()-1;i>=0;i--)
            {
  				MessBoar mb=al.get(i);
  		    %>
  		    <div class="card mb-3">
              <div class="card-body">
                <h6 class="card-title mb-1"><a href="#"><%= mb.getName() %></a></h6>
                <h3><%= mb.getTitle() %></h3>
                <a><%= mb.getMessage() %></a>
              </div>
              <hr class="my-0">
              <div class="card-footer small text-muted">留言时间为:<%=mb.getTime()%></div>
            </div>
  		<%
  			}
  		 %>
            
     </div>
     <div id="master" >
	<a>Copyright © 2018 TZC-BobHuang
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          	Time:
          <%=new java.util.Date()%></a>
 	</div>
</body>

</html>
