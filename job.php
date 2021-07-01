
<div class="banner">
	<div class="container">
		<div id="search_wrapper">
		 <div id="search_form" class="clearfix">
		 <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p>
            <h2 class="title">top Countries &amp; searches</h2>
         </div>
		 <div id="city_1" class="clearfix">
			 <ul class="orange">

			 <?php
				include('dbconnect.php');
				$sql = "select * from jobs";
				$rs = mysqli_query($con,$sql);
				while($data = mysqli_fetch_array($rs)){

					
			 ?>
			 <li>
			 <a href="#"><?= $data['categories'] ?> - <?= $data['location'] ?> </a>
			 </li>

			 <?php
				}
				?>
		
			 </ul>
	     </div>
       </div>
   </div> 
</div>

<div class="container">

<div class="single">  
     
<?php


 $userid = $_SESSION['userid'];

  include('dbconnect.php');
  $sql = "select * from jobs";
  $rs = mysqli_query($con,$sql);
  while($data = mysqli_fetch_array($rs)){


    $_SESSION['jobid'] = $data['jobid'];
    $userid = $_SESSION['userid'];
?>
	   

       <div class="col-md-12" height="400px;" > 
              
                <h1><?= $data['title'] ?></h1>
                <h5><?= $data['categories'] ?></h5>
                <p>Desc :   <?= $data['description'] ?></p>
                <h3>Salary :   <?= $data['salary'] ?></h3>
                <h3>Timing :   <?= $data['timing'] ?></h3>
                <h3>Location :   <?= $data['location'] ?></h3>

                 <?php

					$type = $_SESSION['type'];

					if($type == 2){

						echo "<a href='apply.php?jobid=".$data["jobid"]."' class='btn btn-primary'>Apply Now</a>";
                
						
					}else{
						echo '<a href="login.php" class="btn btn-primary"> Login </a> ';
						echo '<a href="register.php" class="btn btn-primary"> Register </a>';
					}

				 ?>
                 

        </div>



       <?php
  }
  ?>
	  
     </div>
     
         
</div>