<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">eJob Portal</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="index.php"><img src="images/logo.png" alt=""></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		
				   <?php 

                           error_reporting(0);

						  session_start();
						  $type = $_SESSION['type'];

						  if($type == 1){
							  echo '
							  <li><a href="admin.php">Dashboard</a></li>
							  <li><a href="categories.php">Categories</a></li>
							  <li><a href="uploadjob.php">Jobs</a></li>
								<li><a href="application.php">View Application</a></li>
								<li><a href="logout.php">Logout</a></li>
							  ';
						  }else if($type == 2){
							echo '
							      <li><a href="index.php">Home</a></li>
							      <li><a href="viewappjob.php">View Applied Job</a></li>
							      <li><a href="logout.php">Logout</a></li>
							';
						  }else{
							  echo '
							  <li><a href="login.php">Login</a></li>
						      <li><a href="register.php">Register</a></li>
							  ';
						  }
				   ?>
				       
			         	
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>