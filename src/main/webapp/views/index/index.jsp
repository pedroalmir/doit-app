<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
    	
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
                <li class="active"><a href="/athena">Início</a></li>
                <li><a href="#about">Sobre</a></li>
                <li><a href="mailto:contato@pedroalmir.com">Contato</a></li>
                <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Ferramentas <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath}/plugin">Plugin API</a></li>
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



    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" style="margin-bottom: 30px;">
      <div class="carousel-inner">
        <div class="item active">
          <img src="${pageContext.request.contextPath}/img/examples/slide-01.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Inteligência Computacional</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Cadastre-se</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="${pageContext.request.contextPath}/img/examples/slide-02.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Computação nas Nuvens</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Leia mais</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="${pageContext.request.contextPath}/img/examples/slide-03.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Modularização</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Exemplos</a>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          	<img class="img-rounded" src="${pageContext.request.contextPath}/img/home/ia.jpg" style="width: 210px;">
          	<h2 style="font-size: 22px !important;">Inteligência Computacional</h2>
          	<p>A ferramenta Athena irá permitir a criação de sistemas de inteligência computacional hibrídos, com o intuito de unir as diferentes
          	áreas da Inteligência Artificial.</p>
          	<p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-rounded" src="${pageContext.request.contextPath}/img/home/cloud-computing.png" style="width: 250px;">
          <h2 style="font-size: 22px !important;">Computação nas Nuvens</h2>
          <p>Athena foi desenhana como um serviço a ser disponibilizado na Web, utilizando os benefícios da Computação em Nuvens.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-rounded" src="${pageContext.request.contextPath}/img/home/modulo.png" style="width: 195px;">
          <h2 style="font-size: 22px !important;">Modularização</h2>
          <p>Os usuários poderão criar seus próprios módulos (algoritmos) a serem incorporados à ferramenta de maneira
          simples e prática.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
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
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-transition.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-alert.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-modal.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-scrollspy.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-tooltip.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-popover.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-button.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-collapse.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-carousel.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-typeahead.js"></script>
    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="${pageContext.request.contextPath}/js/holder/holder.js"></script>
	</body>
</html>