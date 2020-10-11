<%@tag import="java.time.LocalDate"%>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>

<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo JSP on BeginnersLuck</title>
<link href="assets/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="assets/css/font-awesome.min.css" rel='stylesheet'
	type='text/css' />
<link href="assets/css/global.css" rel='stylesheet' type='text/css' />

<script src="assets/javascript/jquery-2.2.4.min.js"></script>
<script src="assets/javascript/popper.min.js"></script>
<script src="assets/javascript/bootstrap.min.js"></script>

<script src="assets/javascript/angular/angular.min.js"></script>

<link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
</head>
<body>
	<div id="pageheader">
	<nav id="nav" class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="#">
            <img src="assets/images/favicon.ico" width="30" height="30" alt="">
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="demo.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="test.jsp">Another page</a>
                </li>
            </ul>
        </div>
    </nav>
	
	</div>
	<div id="body" class="container-fluid">
		<jsp:doBody />
	</div>
	<div id="pagefooter" class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<p id="copyright">Copyright <%= LocalDate.now().getYear() %></p>
			</div>
		</div>
	</div>
</body>
</html>