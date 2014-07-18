<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<meta name="author" content="Pedro Almir">
    	<meta name="description" content="Athena Project">
		
		<link rel="shortcut icon" href="http://www.caelum.com.br/favicon.ico" type="image/x-icon">
		
		<!-- Le styles -->
    	<link href="/athena/css/bootstrap.css" rel="stylesheet">
    	<link href="/athena/css/bootstrap-responsive.css" rel="stylesheet">
    	
		<title>Athena Plugin API</title>
		
		<style>
		    /* GLOBAL STYLES
		    -------------------------------------------------- */
		    /* Padding below the footer and lighter body text */
		
		    body {
		      padding-bottom: 40px;
		      color: #5a5a5a;
		    }
		
		    /* CUSTOMIZE THE NAVBAR
		    -------------------------------------------------- */
		
		    /* Special class on .container surrounding .navbar, used for positioning it into place. */
		    .navbar-wrapper {
		      position: absolute;
		      top: 0;
		      left: 0;
		      right: 0;
		      z-index: 10;
		      margin-top: 20px;
		      margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
		    }
		    .navbar-wrapper .navbar {
		
		    }
		
		    /* Remove border and change up box shadow for more contrast */
		    .navbar .navbar-inner {
		      border: 0;
		      -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
		         -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
		              box-shadow: 0 2px 10px rgba(0,0,0,.25);
		    }
		
		    /* Downsize the brand/project name a bit */
		    .navbar .brand {
		      padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
		      font-size: 16px;
		      font-weight: bold;
		      text-shadow: 0 -1px 0 rgba(0,0,0,.5);
		    }
		
		    /* Navbar links: increase padding for taller navbar */
		    .navbar .nav > li > a {
		      padding: 15px 20px;
		    }
		
		    /* Offset the responsive button for proper vertical alignment */
		    .navbar .btn-navbar {
		      margin-top: 10px;
		    }
		
		    /* CUSTOMIZE THE CAROUSEL
		    -------------------------------------------------- */
		
		    /* Carousel base class */
		    .carousel {
		      margin-bottom: 60px;
		    }
		
		    .carousel .container {
		      position: relative;
		      z-index: 9;
		    }
		
		    .carousel-control {
		      height: 80px;
		      margin-top: 0;
		      font-size: 120px;
		      text-shadow: 0 1px 1px rgba(0,0,0,.4);
		      background-color: transparent;
		      border: 0;
		      z-index: 10;
		    }
		
		    .carousel .item {
		      height: 500px;
		    }
		    .carousel img {
		      position: absolute;
		      top: 0;
		      left: 0;
		      min-width: 100%;
		      height: 500px;
		    }
		
		    .carousel-caption {
		      background-color: transparent;
		      position: static;
		      max-width: 550px;
		      padding: 0 20px;
		      margin-top: 200px;
		    }
		    .carousel-caption h1,
		    .carousel-caption .lead {
		      margin: 0;
		      line-height: 1.25;
		      color: #fff;
		      text-shadow: 0 1px 1px rgba(0,0,0,.4);
		    }
		    .carousel-caption .btn {
		      margin-top: 10px;
		    }
		
		
		
		    /* MARKETING CONTENT
		    -------------------------------------------------- */
		
		    /* Center align the text within the three columns below the carousel */
		    .marketing .span4 {
		      text-align: center;
		    }
		    .marketing h2 {
		      font-weight: normal;
		    }
		    .marketing .span4 p {
		      margin-left: 10px;
		      margin-right: 10px;
		    }
		
		
		    /* Featurettes
		    ------------------------- */
		
		    .featurette-divider {
		      margin: 80px 0; /* Space out the Bootstrap <hr> more */
		    }
		    .featurette {
		      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
		      overflow: hidden; /* Vertically center images part 2: clear their floats. */
		    }
		    .featurette-image {
		      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
		    }
		
		    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
		    .featurette-image.pull-left {
		      margin-right: 40px;
		    }
		    .featurette-image.pull-right {
		      margin-left: 40px;
		    }
		
		    /* Thin out the marketing headings */
		    .featurette-heading {
		      font-size: 50px;
		      font-weight: 300;
		      line-height: 1;
		      letter-spacing: -1px;
		    }
		
		
		
		    /* RESPONSIVE CSS
		    -------------------------------------------------- */
		
		    @media (max-width: 979px) {
		
		      .container.navbar-wrapper {
		        margin-bottom: 0;
		        width: auto;
		      }
		      .navbar-inner {
		        border-radius: 0;
		        margin: -20px 0;
		      }
		
		      .carousel .item {
		        height: 500px;
		      }
		      .carousel img {
		        width: auto;
		        height: 500px;
		      }
		
		      .featurette {
		        height: auto;
		        padding: 0;
		      }
		      .featurette-image.pull-left,
		      .featurette-image.pull-right {
		        display: block;
		        float: none;
		        max-width: 40%;
		        margin: 0 auto 20px;
		      }
		    }
		
		
		    @media (max-width: 767px) {
		
		      .navbar-inner {
		        margin: -20px;
		      }
		
		      .carousel {
		        margin-left: -20px;
		        margin-right: -20px;
		      }
		      .carousel .container {
		
		      }
		      .carousel .item {
		        height: 300px;
		      }
		      .carousel img {
		        height: 300px;
		      }
		      .carousel-caption {
		        width: 65%;
		        padding: 0 70px;
		        margin-top: 100px;
		      }
		      .carousel-caption h1 {
		        font-size: 30px;
		      }
		      .carousel-caption .lead,
		      .carousel-caption .btn {
		        font-size: 18px;
		      }
		
		      .marketing .span4 + .span4 {
		        margin-top: 40px;
		      }
		
		      .featurette-heading {
		        font-size: 30px;
		      }
		      .featurette .lead {
		        font-size: 18px;
		        line-height: 1.5;
		      }
		
		    }
   		</style>
	</head>
	<body>
	<jsp:include page="../utils/messageAlert.jsp"></jsp:include>
	<!-- NAVBAR
    ================================================== -->
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-inverse">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="/athena">Athena</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li><a href="/athena">Início</a></li>
                <li><a href="#about">Sobre</a></li>
                <li><a href="mailto:contato@pedroalmir.com">Contato</a></li>
                <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                <li class="dropdown active">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Ferramentas <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="active"><a href="#">Plugin API</a></li>
                    <li><a href="#">Simulações</a></li>
                    <li><a href="#">Criar Sistemas</a></li>
                    <li class="divider"></li>
                    <li class="nav-header">Relatórios</li>
                    <li><a href="#">Gerar relatórios</a></li>
                    <li><a href="#">Configurações</a></li>
                  </ul>
                </li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing" style="margin-top: 100px;">

      <!-- Three columns of text below the carousel -->
      <div class="row">
      	<div class="span2"></div>
        <div class="span8">
        	<table class="table table-hover table-striped">
			  <caption style="margin-bottom: 50px; font-size: 30px; font-family: sans-serif; margin-top: 30px;">Lista de Plugins</caption>
			  <thead>
			    <tr>
			      <th>#</th>
			      <th style="width: 210px;">Nome</th>
			      <th style="width: 330px;">Path</th>
			      <th>Opções</th>
			    </tr>
			  </thead>
			  <tbody>
			    <c:choose>
					<c:when test="${plugins != null && plugins != '[]'}">
							<c:forEach items="${plugins}" var="plugin">
									<tr>
			      						<td>${plugin.id}</td>
			      						<td>${plugin.bundleName}</td>
			      						<td>/plugins</td>
			      						<td>
			      							<a href="plugin/execute/${plugin.uniqueKey}" class="btn btn-primary" style="width: 90px;">Executar</a>
			      						</td>
			    					</tr>
	                    	</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
					      <td>1</td>
					      <td>Plugin Sample</td>
					      <td>/plugins</td>
					      <td>
					      	<a href="#" class="btn btn-primary" style="width: 90px;">Executar</a>
					      </td>
					    </tr>
					</c:otherwise>
				</c:choose>
			    
			    <form id="mainForm"  enctype="multipart/form-data" method="post" action="plugin/save">
				    <tr id="formLine" class="">
				      <td id="formLineId" style="">2</td>
				      <td>
				      	<div id="controlGroupPluginName" class="control-group" style="margin-bottom: 0px; !important">
				      		<input class="input-medium" type="text" id="pluginName" name="pluginName" placeholder="Nome do Plugin">
				      	</div>
				      </td>
				      <td>
				      	<div id="controlGroupPluginFile" class="control-group" style="margin-bottom: 0px; !important">
					      	<div class="input-append">
								<input id="inputPath" type="text" placeholder="Path do Plugin">
							  	<button id="appendedInputButton" class="btn" type="button" ><i class="icon-folder-open"></i> Abrir</button>
							  	<input type="file" id="pluginfile" name="pluginFile" style="display: none;"/>
							</div>
							<span id="spanInputPath" class="help-block" style="margin-bottom: 0px; !important">
							</span>
						</div>
				      </td>
				      <td>
				      	<input class="btn btn-success" style="width: 115px;" type="submit" value="Carregar" />
				      </td>
				    </tr>
			    </form>
			  </tbody>
			</table>
        </div><!-- /.span8 -->
        <div class="span2">
        
        </div>
      </div><!-- /.row -->
		
		<hr/>

      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>Athena &copy; 2013 &middot; <a href="http://pedroalmir.com/#profile">Pedro Almir</a></p>
      </footer>

    </div><!-- /.container -->



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/athena/js/jquery.js"></script>
    <script src="/athena/js/bootstrap-alert.js"></script>
    <script src="/athena/js/bootstrap-modal.js"></script>
    <script src="/athena/js/bootstrap-dropdown.js"></script>
    <script src="/athena/js/bootstrap-button.js"></script>
    <script>
      function showConsole(){
    	  //alert("${resultOfExecution}");
    	  if("${resultOfExecution}"){
    		  $('#modal-message-alert-success').html("<h4 style=\"text-align: center;\">Plugin executado com sucesso!</h4>" +
						"<br/>Resultado: " + "${resultOfExecution}").parent().show();
				$('#modal-message-alert').modal("show");
    	  }
      }
      !function ($) {
        $(function(){
          showConsole();
          /* Open file chooser */
          $('#appendedInputButton').on("click", function(event){
        	  event.preventDefault();
        	  $('#pluginfile').trigger('click');
          });
          /* Validation in input file */
          $('#pluginfile').on("change", function(event){
        	  event.preventDefault();
			  var name = document.getElementById('pluginfile').value;
			  if(name == ""){
				  document.getElementById('inputPath').value = "";
					
				  document.getElementById('formLine').setAttribute('class', 'error');
				  document.getElementById('controlGroupPluginName').setAttribute('class', 'control-group error');
				  document.getElementById('controlGroupPluginFile').setAttribute('class', 'control-group error');
					
				  document.getElementById('formLineId').setAttribute('style', 'color: #b94a48;');
				  
				  $('#spanInputPath').html('Este campo é requirido.');
			  }else{
			  	var extension = name.substr(name.length - 4).toLowerCase();
				if(extension == ".jar"){
					document.getElementById('inputPath').value = name.replace('C:\\fakepath\\', '');
					
					document.getElementById('formLine').setAttribute('class', '');
					document.getElementById('controlGroupPluginName').setAttribute('class', 'control-group');
					document.getElementById('controlGroupPluginFile').setAttribute('class', 'control-group');
					
					document.getElementById('formLineId').setAttribute('style', '');
					$('#spanInputPath').html('');
				}else{
					document.getElementById('inputPath').value = "";
					
					document.getElementById('formLine').setAttribute('class', 'error');
					document.getElementById('controlGroupPluginName').setAttribute('class', 'control-group error');
					document.getElementById('controlGroupPluginFile').setAttribute('class', 'control-group error');
					
					document.getElementById('formLineId').setAttribute('style', 'color: #b94a48;');
					$('#spanInputPath').html('Selecione um arquivo com extensão .jar');
				}
			  }
          });
        });
      }(window.jQuery);
    </script>
    <script src="/athena/js/holder/holder.js"></script>
	</body>
</html>