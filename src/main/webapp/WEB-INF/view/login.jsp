
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<title>Quản lý bệnh viện</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> -->
<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">
<!-- <link href="css/login.css" rel="stylesheet" type="text/css"> -->
</head>

<body>
	<header>
    	<div class="container">
    	<p class="loichao">XIN CHÀO, MỜI BẠN ĐĂNG NHẬP ĐỂ TRUY CẬP VÀO HỆ THỐNG</p>
        </div>
    </header>
    
   	<div class="container">
        <div class="col-lg-6 dangnhap">
        	<div class="nhap">
                <div class="ten">Tên Đăng Nhập: </div> 
                <form action="#">
                    <input name="username" type="text" value="" size="30" maxlength="20"/>
                </form>
            </div><!--end nhap-->
            
            <div class="clean0"></div>
            
            <div class="nhap">
                <div class="ten">Mật khẩu: </div> 
                <form action="#">
                    <input name="username" type="password" value="" size="30" maxlength="30"/>
                </form>
            </div><!--end nhap-->
            
            <!--<p style="color:#FF0000; margin-left: 20px">** Tên đăng nhập và Mật khẩu là số CMND của bạn</p>-->
        </div><!--end dangnhap-->
        
        <button type="button" name="" value="" class="but_dangnhap" data-text="Đăng Nhập"><span>Đăng Nhập</span>
        </button>

    </div><!--end container-->
</body>
</html>




<%-- <body>

<div class="container">

	<!-- Static navbar -->
	<nav class="navbar navbar-inverse navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<div class="menutext">MENU</div>
				</button>
				<a class="navbar-brand" href="<c:url value="/" />"><img src="<c:url value="/resources/login_files/index-logo.png"/>" alt="ipcamliveee"></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
									<ul class="nav navbar-nav navbar-right">
	<li><a href="<c:url value="/login.html" />">Login</a></li>
</ul>							</div><!--/.nav-collapse -->
		</div><!--/.container-fluid -->
	</nav>

	<div class="container">

		<div id="contentdiv" class="content">
					


<div class="login">
<c:set var="error" scope="session" value="${param.error}"/>
<c:if test="${error == true}">
	<div class="alert alert-danger collapse" role="alert" style="display: block;">
		<strong>Error! </strong>Invalid login name or password.
	</div>
</c:if>
	<div id="logindiv">
		<form action="j_spring_security_check"  method="post" id="loginform" class="form-signin">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input input type='text' name='j_username' value='' class="form-control" placeholder="Login name">
			<input input type='password' name='j_password' class="form-control" placeholder="Password">
			<label class="checkbox">
				<input type="checkbox" id="rememberme" value="remember-me"> Remember me
			</label>
			<button id="okbutton" class="btn btn-large btn-default" data-loading-text="Loading..." type="submit">Login</button>
			<div class="register pull-right">
				<a href="<c:url value="/user/registration" />">Sign up</a><br>
				<a href="<c:url value="/user/forgotten" />">Forgotten password</a>
			</div>
		</form>

	</div>

</div>				
</div>

</div>

</div>

	<script src="<c:url value="/resources/login_files/bootstrap.min.js"/>"></script>


</body></html> --%>