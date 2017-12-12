<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp-OrganoCart</title>

<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<style>
#mainBody {
	width: 50%;
}

.input-group {
	
	margin: 20px 0px 20px;
	width: 75%;
}

radio-inline {
	margin: 0px 50px 0px;
}

input[type=text]:focus, input[type=password]:focus {
	border:3px solid #9ccc65;
	
}

.verticalLine {
	border-right: 2px;
	border-color: #9ccc65;
}

#signupbutton,#cancelbutton {
	background-color: #9ccc65;
	color: #ffffff;
	width:200px;
	background: linear-gradient(to bottom, #aed581 30%, #9ccc65 50%);
}

#signupbutton:HOVER, #cancelbutton:HOVER {
	background: linear-gradient(to bottom, #9ccc65 30%, #8bc34a 50%);
	color: #ffffff;
	width:200px;
}
</style>
</head>

<jsp:include page="header.jsp" />
<body style="background-color: #dcedc8">

	<div id="mainBody" class="container" align="center"
		style="min-height: 400px;">
		<h3 class="animated fadeInDown delay-05s">
			<b>Welcome To OrganoCart</b>
		</h3>
		<form:form modelAttribute="urm" action="reguser">
			<!-- urm -@modelattribute used in Usercontroller -->
			<div class="input-group animated fadeInDown delay-07s" id="UserName">
				<span class="input-group-addon" id="basic-addon1">
					<div class="glyphicon glyphicon-user"></div>
				</span>
				<form:input type="text" class="form-control" placeholder="Username"
					aria-describedby="basic-addon1" path="username" required="true"></form:input>
			</div>
			<div class="input-group animated fadeInDown delay-09s" id="Password">
				<span class="input-group-addon" id="basic-addon1">
					<div class="glyphicon glyphicon-lock" required="true"></div>
				</span>
				<form:input type="password" class="form-control"
					placeholder="New Password" aria-describedby="basic-addon1"
					path="password" required="true"></form:input>
			</div>
			<div class="input-group animated fadeInDown delay-11s" id="PhoneNumber">
				<span class="input-group-addon" id="basic-addon1">
					<div class="glyphicon glyphicon-phone"></div>
				</span>
				<form:input type="text" class="form-control"
					placeholder="Phone Number" aria-describedby="basic-addon1"
					path="phno" value="+91" required="true"></form:input>
			</div>
			<div>
			<div class="input-group animated fadeInDown delay-13s" id="Email" style="margin-bottom: 0px;">
			
				<span class="input-group-addon" id="basic-addon1">
					<div class="glyphicon glyphicon-inbox"></div>
				</span>
				<form:input type="text" class="form-control" placeholder="Email"
					aria-describedby="basic-addon1" path="Emailid" required="true"></form:input>
			</div>
			<div style="margin-top: 3px;color: #9ccc65;"><span class="glyphicon glyphicon-hand-up">  </span>   Login using this Email </div>
			</div>
			<div class="row" style="margin-top: 20px;">
				<button id="signupbutton" class="btn animated fadeInDown delay-15s" type="submit">Sign Up</button>
				<button id="cancelbutton" class="btn animated fadeInDown delay-15s" type="Reset">Cancel</button>
			</div>

		</form:form>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
