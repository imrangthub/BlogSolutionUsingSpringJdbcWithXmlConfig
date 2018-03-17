<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
        <!-- Application  CSS -->
    <link href="<c:url value="/resources/css/application.css" />" rel="stylesheet">

<%@ page isELIgnored="false" %>
  </head>

  <body>

 <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"href="/SpringJdbcBlogWithXmlConfig/">Spring Blog</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Menu <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/SpringJdbcBlogWithXmlConfig/auth/login">Login</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div style="margin-top:50px"></div>

    <div class="container">
   
    
		
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
        <div style="hight:50px; margin-top:20px;">
        <span>New post</span>
        <span class="pull-right">
        
          <c:if test="${not empty message}">
		    <div  class="alert alert-${css} alert-dismissible well" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
			<strong>${message}</strong>
		    </div>
		</c:if>

         </span>
        </div>
            <div class="row">
             <div class="col-md-8 col-md-offset-2">
               <form action="/SpringJdbcBlogWithXmlConfig/post/create" method="POST" enctype="multipart/form-data">
				  <div class="form-group">
				    <label for="exampleInputEmail1">Title</label>
				    <input type="text" class="form-control" id="title" name="title" placeholder="Post title">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Post body</label>
			         <textarea class="form-control" name="body" rows="3"></textarea>
				  </div>
				   <div class="form-group">
				    <label for="exampleInputFile">File input</label>
				    <input type="file" id="file" name="file">
				    <p class="help-block">Post image file must be .jpg or .png file.</p>
				   </div>
				  <button type="reset" class="btn btn-warning">Cancel</button>
				  <button type="submit" class="btn btn-success">Submit</button>
				</form>
             </div>
            </div>
        </div>
      </div>
      <hr>
      <footer>
      <div>
         <p class="text-center">&copy; 2016 Company, Inc.</p>
      </div>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="<c:url value="/resources/js/jquery-2.1.3.min.js" />"></script>
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/application.js" />"></script>
  </body>
</html>