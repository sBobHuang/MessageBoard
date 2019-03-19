<%@page import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>留言板登录</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">登录</div>
      <div class="card-body">
        <form action="login" method="post">
          <div class="form-group">
            <label for="exampleInputName">账号</label>
            <input name="name" input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="请输入用户名">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">密码</label>
            <input name="password" input class="form-control" id="exampleInputPassword1" type="password" placeholder="请输入密码，我不看，嘻嘻嘻">
          </div>
          <button type="submit" class="btn btn-primary btn-block">登录</button>
          <button type="reset" class="btn btn-primary btn-block">重置</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/register">注册</a>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
