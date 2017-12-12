<html>
<head>

<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">

<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<script src="resources/js/angular.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home-OrganoCart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style type="text/css">
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	height: 440px;
	max-height: 400px;
}

.panel {
	display: inline-block;
	background-color: #ffffff;
}

.panel:hover {
	cursor: pointer;
	background-color: #dcedc8;
	-webkit-transition: background-color ease-in 0.4s;
	transition: background-color ease-in 0.4s;
}

#addtocartbutton, #viewproductsbutton {
	background-color: #9CCC65;
	color: #ffffff;
}

#addtocartbutton:hover, #viewproductsbutton:hover {
	background-color: #aed581;
	color: #ffffff;
}

#productimage:hover {
	transition: all 0.5s ease;
	transform: scale(1.07);
}

#pricediv {
	text-align: right;
	font-size: 20px;
	font-weight: bold;
	font-family: sans-serif;
}

#producta {
	color: #000000;
	text-decoration: none;
}

#welldiv {
	background-color: #ffffff;
}

#loginproductsbutton {
	color: #ffffff;
	text-decoration: none;
	margin-right: 110px;
	background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
}
#loginproductsbutton:HOVER {
	background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
}
</style>
<script>
	var productlist = ${productlist};
	angular.module('organocartpackage', []).controller('ProductController',
			function($scope) {
				$scope.productangularobject = productlist;
			});
</script>
</head>
<jsp:include page="header.jsp" />
<body style="background-color: #ffffff">
	<div class="column">

		<div id="myCarousel" class="carousel slide animated fadeIn delay-08s" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src="resources/img/organicproducts4.jpg" alt="fourthimage"
						width="460px" height="440px">
				</div>
				<div class="item">
					<img src="resources/img/organicproducts1.jpg" alt="firstimage"
						width="460px" height="440px">
				</div>

				<div class="item">
					<img src="resources/img/organicproducts2.jpg" alt="secondimage"
						width="460px" height="440px">
				</div>

				<div class="item">
					<img src="resources/img/organicproducts3.jpg" alt="thirdimage"
						width="460px" height="440px">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div id="welldiv" ng-app="organocartpackage"
			ng-controller="ProductController">
			<h3 style="text-align: center;">Products</h3>
			<div class="panel scroll animated fadeInUp delay-05s" style="margin-left: 50px;"
				ng-repeat="p in productangularobject | limitTo: 4">
				<a href="viewproduct?getId={{p.ProductId}}" id="producta">

					<div class="panel-body">

						<img id="productimage" class="img-rounded img-fluid"
							src="resources/Pimage/{{p.ProductId}}.jpg" height="200px"
							width="200px">

						<div class="lead" style="margin-top: 5px">{{p.ProductName}}</div>
						<div class="">{{p.ProductDescription}}</div>
						<hr>
						<div id="pricediv">
							<strong style="margin-top: 10px">Rs.{{p.ProductPrice}}</strong>
						</div>
					</div>
				</a>
			</div>
			<a href="buyproductpage" class="btn pull-right" id="loginproductsbutton"><span
				class="glyphicon glyphicon-hand-right"></span>&nbsp; View More Products</a>
		</div>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>
