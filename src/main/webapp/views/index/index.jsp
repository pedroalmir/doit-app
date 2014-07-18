<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
    	
    	<meta name="author" content="Pedro Almir">
    	<meta name="description" content="Doit application">
    	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">
    	
		<!-- Bootstrap core CSS -->
	    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	    <!-- Custom styles for this template -->
	    <link href="${pageContext.request.contextPath}/css/sticky-footer-navbar.css" rel="stylesheet">
	
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    
	    <!-- ========================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
	    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	    <script src="${pageContext.request.contextPath}/js/docs.min.js"></script>
	</head>
	<body>
		<!-- Fixed navbar -->
    	<div class="navbar navbar-default navbar-fixed-top">
      		<div class="container">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	           			<span class="sr-only">Toggle navigation</span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
          			</button>
          			<a class="navbar-brand" href="${pageContext.request.contextPath}/">DoIt Application</a>
        		</div>
        		<div class="collapse navbar-collapse">
          			<ul class="nav navbar-nav">
            			<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
            			<li><a href="http://github.com/pedroalmir/doit-app">Git Repository</a></li>
            			<li><a href="mailto:petrus.cc@gmail.com">Contact</a></li>
          			</ul>
        		</div><!--/.nav-collapse -->
      		</div>
    	</div>
    	<!-- Begin page content -->
    	<div class="container">
      		<div class="page-header" style="margin: 0px 0 20px;">
        		<h2>DoIt application</h2>
      		</div>
      		<p class="lead text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
      		Fusce quis tellus metus. Aliquam id ligula at erat consequat hendrerit. Nulla facilisi. 
      		Maecenas vitae elit ut turpis egestas tempor. Praesent imperdiet rhoncus purus quis sagittis. 
      		Nulla ultricies eros id augue dictum tincidunt. Nunc egestas aliquet fringilla.</p>
      		<div class="row">
      			<div class="col-md-5">
					<div class="panel panel-primary">
						<div class="panel-heading">
					    	<h3 class="panel-title">Search</h3>
					  	</div>
					  	<div class="panel-body">
					  		<form action="">
					  			<div class="col-sm-12">
						  			<div class="form-group">
								    	<label for="search">Name*</label>
								    	<input type="text" class="form-control" id="search" placeholder="What do you want?" value="Samsung Galaxy S4">
								  	</div>
								  	<div class="form-group">
								  		<label for="searchengine">Search engine*</label>
										<select multiple class="form-control" id="searchengine" name="searchengine">
											<option>Submarino</option>
											<option>Americanas</option>
											<option>Ponto Frio</option>
											<option>iByte</option>
										</select>
									</div>
							  	</div>
						  		<div class="col-sm-6">
						  			<div class="form-group">
							    		<label for="start">Start</label>
							    		<input type="date" class="form-control" id="start">
							    	</div>
						  		</div>
							  	<div class="col-sm-6">
						  			<div class="form-group">
							    		<label for="end">End</label>
							    		<input type="date" class="form-control" id="end">
							    	</div>
						  		</div>
						  		<div class="col-sm-12">
						  			<div class="form-group">
										<button id="doit" type="button" class="btn btn-success pull-right" style="width: 100%">
											DoIt !
										</button>
									</div>
						  		</div>
					  		</form>
					  	</div>
					</div>
      			</div>
      			<div class="col-md-7">
      				<div class="panel panel-primary">
						<div class="panel-heading">
					    	<h3 class="panel-title">Upload a new search engine</h3>
					  	</div>
					  	<div class="panel-body">
					  		<form action="">
					  			<div class="col-sm-12">
						  			<div class="form-group">
								    	<label for="name">Name</label>
								    	<input type="text" class="form-control" id="name" name="name" placeholder="Enter with the name">
								  	</div>
								  	<div class="form-group">
								    	<label for="description">Description</label>
								    	<textarea class="form-control" rows="4" id="description" name="description" placeholder="Enter with the description"></textarea>
								  	</div>
								  	<div class="form-group">
								  		<label for="file">File input</label>
								  		<input type="file" id="file" name="file">
								  	</div>
								  	<div class="form-group">
										<button id="doit" type="button" class="btn btn-primary pull-right" style="width: 100%">
											Upload
										</button>
									</div>
							  	</div>
					  		</form>
					  	</div>
					</div>
      			</div>
      		</div>
      		<div class="row">
      			<div class="col-sm-5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><strong>Features</strong></h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<caption><p><strong>Samsung Galaxy S4</strong></p></caption>
					      		<thead>
					        		<tr>
					          			<th class="col-sm-1">#</th>
					          			<th class="col-sm-6">Feature</th>
					          			<th class="col-sm-4">Quality</th>
					        		</tr>
					      		</thead>
      							<tbody>
        							<tr>
          								<td>1</td>
          								<td>Tela</td>
          								<td><input type="range" value="90" disabled="disabled"></td>
        							</tr>
        							<tr>
          								<td>2</td>
          								<td>Bateria</td>
          								<td><input type="range" value="40" disabled="disabled"></td>
        							</tr>
        							<tr>
          								<td>3</td>
          								<td>Memória Interna</td>
          								<td><input type="range" value="50" disabled="disabled"></td>
        							</tr>
						      	</tbody>
						    </table>
						</div>
					</div>
				</div>
      			<div class="col-sm-7">
      				<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><strong>Comments</strong></h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
					      		<thead>
					        		<tr>
					          			<th class="col-sm-1">#</th>
					          			<th class="col-sm-8">Comment</th>
					          			<th class="col-sm-1">Options</th>
					        		</tr>
					      		</thead>
      							<tbody>
        							<tr class="success">
          								<td>1</td>
          								<td>A Tela do Samsung S4 é muito boa...</td>
          								<td><button type="button" class="btn btn-primary btn-xs" style="width: 100%"><span class="glyphicon glyphicon-info-sign"></span></button></td>
        							</tr>
        							<tr class="danger">
          								<td>2</td>
          								<td>A Bateria do Samsung S4 dá muitos problemas pois...</td>
          								<td><button type="button" class="btn btn-primary btn-xs" style="width: 100%"><span class="glyphicon glyphicon-info-sign"></span></button></td>
        							</tr>
        							<tr class="warning">
          								<td>3</td>
          								<td>O Samsung S4 tem uma Memória Interna razoável...</td>
          								<td><button type="button" class="btn btn-primary btn-xs" style="width: 100%"><span class="glyphicon glyphicon-info-sign"></span></button></td>
        							</tr>
						      	</tbody>
						    </table>
						</div>
					</div>
      			</div>
      		</div>
    	</div>
    	<div id="footer">
      		<div class="container">
        		<p class="text-muted">Developed by <a href="http://pedroalmir.com">Pedro Almir</a> © 2014</p>
      		</div>
	    </div>
	</body>
</html>