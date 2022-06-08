<?php
session_start();
include("dbconnection.php");
include("checklogin.php");
check_login();
if(isset($_POST['update']))
{
	$firstname=$_POST['firstname'];

	$phonenumber=$_POST['phonenumber'];
	$address=$_POST['address'];
	$a=mysqli_query($con,"update admin set firstname='$firstname',phonenumber='$phonenumber',address='$address' where name='".$_SESSION['alogin']."'");
if($a)
{
echo "<script>alert('Your profile updated successfully.');</script>";
}
}

?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>CRM | Admin Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="../assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="../assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<link href="../assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
<link href="../assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
</head>
<body class="">
<?php include("header.php");?>
<div class="page-container row-fluid">
	<?php include("leftbar.php");?>
	<div class="clearfix"></div>
  </div>
  </div>
  <a href="#" class="scrollup">Scroll</a>
   <div class="footer-widget">
	<div class="progress transparent progress-small no-radius no-margin">
		<div data-percentage="79%" class="progress-bar progress-bar-success animate-progress-bar" ></div>
	</div>
	<div class="pull-right">
	</div>
  </div>
  <div class="page-content">
    <div id="portlet-config" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
      </div>
      <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">
		<div class="page-title">
			<h3></h3>
<?php
$query=mysqli_query($con,"select * from admin where name='".$_SESSION['alogin']."'");
	 while($row=mysqli_fetch_array($query))
	 {
	  ?>
<div class="row">
<div class="col-md-12">
<form class="form-horizontal" method="post" enctype="multipart/form-data">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title"><strong><?php echo $_SESSION['firstname'];?>'s Profile</h3>
</div>
<div class="panel-body">
<div class="form-group">
<label class="col-md-3 col-xs-12 control-label">Name</label>
<div class="col-md-6 col-xs-12">
<div class="input-group">
<span class="input-group-addon"><span class="fa fa-pencil"></span></span>
<input type="text" name="firstname" value="<?php echo $row['firstname'];?>" class="form-control"/>
</div>
</div>
</div>
<div class="form-group">
<label class="col-md-3 col-xs-12 control-label">Phone no </label>
<div class="col-md-6 col-xs-12">
<div class="input-group">
<span class="input-group-addon"><span class="fa fa-pencil"></span></span>
<input type="text"  name="phonenumber" value="<?php echo $row['phonenumber'];?>"  maxlength="10" class="form-control"/>
</div>
</div>
</div>
<div class="form-group">
<label class="col-md-3 col-xs-12 control-label">Address</label>
<div class="col-md-6 col-xs-12">
<textarea class="form-control" name="address" rows="5"><?php echo $row['address'];?></textarea>
</div>
</div>
</div>
<?php } ?>
<div class="panel-footer">
<button class="btn btn-default" type="reset">Clear Form</button>
<input type="submit" value="Update" name="update" class="btn btn-primary pull-right">
</div>
</div>
</form>
</div>
</div>
</div>
</div>
  </div>
 </div>
<script src="../assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/plugins/breakpoints.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js" type="text/javascript"></script>
<script src="../assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="../assets/js/core.js" type="text/javascript"></script>
<script src="../assets/js/chat.js" type="text/javascript"></script>
<script src="../assets/js/demo.js" type="text/javascript"></script>
</body>
</html>