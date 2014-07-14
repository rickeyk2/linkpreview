
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Link Preview</title>

    <!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style type="text/css">
		body {
		  padding-top: 50px;
		}
		
	</style>

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Bootstrap Link Preview</a>
        </div>
        
      </div>
    </div>
    
    <div class="jumbotron">
      <div class="container">
        <h1>Link Preview!</h1>
        <p>Simple Link Preview Code when you type in a url and hit spacebar or when you paste a url link</p>
      </div>
    </div>


    <div class="container">

      
      <div class="row">
      
        <form  id="form" class="form-horizontal" role="form">
          <div class="form-group">
            <label for="url">Paste Status Here</label>
            <textarea rows="3" name="url" class="form-control input-lg" id="url" placeholder="Paste text with URL here"></textarea>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-success pull-right">Submit</button>
          </div>
        </form>
        
        <div id="progress" class="hide">
            <img src="/img/ajax-loader.gif" />
        </div>

        <div id="linkdata" class="col-md-12 hide">
        	<h2>Heading</h2>
            <p></p>
        </div>
        
     </div>
        
     <hr/>
        
        

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.js"></script>
    <script src="js/linkpreview.js"></script>
  </body>
</html>
