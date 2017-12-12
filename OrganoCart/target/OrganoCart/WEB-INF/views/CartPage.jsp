<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Organocart - Cart Page</title>
<script src="resources/js/angular.js"></script>
<script type="text/javascript">
	var cartproductlist = ${itemsincart};
	angular.module('organocartpackage', []).controller('CartController',
			function($scope) {
				$scope.citems = cartproductlist;
			});
</script>
<style type="text/css">
.table>thead {
	background-color: #8BC34A;
	color: #ffffff;
	font-style: italic;
	padding: 10px;
	text-align: center;
	vertical-align: middle;
}

.table>tfoot {
	background-color: #8BC34A;
	color: #ffffff;
	font-style: italic;
	padding: 10px;
	text-align: center;
}

.table-striped>tbody>tr:nth-of-type(even) {
	background-color: #dcedc8;
}

#removebtn {
	color: #ffffff;
	background-color: #e57373;
}

#removebtn:hover {
	color: #ffffff;
	background-color: #e53935;
}

#prodimage {
	width: 125px;
	height: 150px;
}

tr {
	margin: 10px;
	background-color: #9ccc65;
}

th {
	text-align: center;
	margin: 10px;
}

td {
	vertical-align: middle !important;
}

#jumbotrondiv {
	background-color: #dcedc8;
	width: 80%;
}

#quantity {
	text-align: center;
}
#quantity:FOCUS
{
	outline: none;
	box-shadow:none;
}
#minusbutton, #plusbutton {
	padding: 9px;
	color: #ffffff;
	background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);
}

#checkoutbutton,#continuebutton {
	color: #ffffff;
	background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);
}
#checkoutbutton:HOVER,#continuebutton:HOVER {
	background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
	color: #ffffff;
}

</style>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body ng-app="organocartpackage" ng-controller="CartController">
	<div class="container" style="min-height: 400px;">
		<h3 style="text-align: center; color: #689f38"
			style=" border-radius: 5px">Cart Page</h3>

		<c:if test="${cartempty}">
			<div class="jumbotron container h4 animated fadeInDown delay-05s" id="jumbotrondiv" align="center">
				There are No items in the cart<br>
				<br>
				<br> 
				<a href="buyproductpage" type="button" id="continuebutton"
					class="btn"><span class="glyphicon glyphicon-shopping-cart"></span>
					Buy Products</a>
			</div>
		</c:if>
		<c:if test="${!cartempty}">
			<table class="table table-striped table-responsive animated fadeInDown delay-05s">
				<thead>
					<tr scope="row">
						<th style="width: 10%">Product</th>
						<th style="width: 10%">Product Name</th>
						<th style="width: 15%">Quantity</th>
						<th style="width: 7%">Total Price</th>
						<th style="width: 7%">Payable Amount</th>
						<th style="width: 10%"></th>
					</tr>
				</thead>

				<tbody ng-repeat="items in citems">
					<tr scope="row" style="margin: 10px">
						<td><img id="prodimage" src="resources/Pimage/{{items.pid}}.jpg"
							class="img-rounded"></td>
						<td class="h4">{{items.pname}}</td>
						<td><div class="input-group">
								<span class="input-group-btn"> <a
									href="editquantity?getproductid={{items.pid}}&value=decrease"
									id="minusbutton" type="button" class="btn"> <span
										class="glyphicon glyphicon-minus"></span>
								</a>
								</span> <input type="text" id="quantity"
									class="form-control input-number" value="{{items.qty}}"
									readonly="readonly" onfocus="this.blur()"> <span class="input-group-btn">
									<a
									href="editquantity?getproductid={{items.pid}}&value=increase"
									id="plusbutton" type="button" class="btn"> <span
										class="glyphicon glyphicon-plus"></span>
								</a>
								</span>
							</div></td>
						<td>Rs.{{items.price}}</td>
						<td>Rs.{{items.total}}</td>
						<td><a href="removeproductitem?pid={{items.pid}}"
							id="removebtn" class="btn btn-outline-danger"> <span
								class="glyphicon glyphicon-remove"></span> Remove
						</a></td>
					</tr>
				</tbody>

				<tfoot>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<div class="pull-left">
							<h4>
								<b>Grand Total</b>
							</h4>
						</div>
					</td>
					<td><h4 class="pull-left">
							<b>Rs.${sessionScope.grandtotal}</b>
						</h4>
					</td>
					<td></td>
				</tfoot>
			</table>
			<div class="pull-right" style="display: inline-block">
			<a href="buyproductpage" type="button" id="continuebutton"
					class="btn"><span
					class="glyphicon glyphicon-shopping-cart"></span> Continue shopping</a>
			<a href="billingaddresspage" class="btn" id="checkoutbutton"><span
					class="glyphicon glyphicon-tasks"></span> Proceed To Order </a>	
			</div>
		</c:if>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>