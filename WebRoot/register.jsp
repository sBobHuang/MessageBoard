<%@page import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>留言板用户注册</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>
<script language="javascript">
      function checkForm(form){
          if(form.name.value==''){
              alert('账户不能为空');
              return false;
          }
          if(form.password.value==''){
              alert('密码不能为空');
              return false;
          }
          if(form.password.value.length <6) {
              alert("您设置的密码过短");
              return false;
          }
          if(form.password.value != form.repsword.value) {
              alert("两次密码不同，请重新输入");
              return false;
          }
          return true;
      }
  </script>
<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">用户注册</div>
      <div class="card-body">
        <form action="register"  onsubmit="return checkForm(this);" method="post">
          <div class="form-group">
            <label for="exampleInputName">用户名</label>
            <input name="name" class="form-control" id="exampleInputName" type="name" aria-describedby="nameHelp" placeholder="请输入用户名">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">密码</label>
                <input name="password" class="form-control" id="exampleInputPassword1" type="password" placeholder="请输入密码">
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">确认密码</label>
                <input name="repsword" class="form-control" id="exampleConfirmPassword" type="password" placeholder="请确认密码">
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-block">注册</button>
          <button type="reset" class="btn btn-primary btn-block">重置</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/">登录页面</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
