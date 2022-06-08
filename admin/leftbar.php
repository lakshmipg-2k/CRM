 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sliding Menu</title>
<style>
*, body{
    margin:0;
    padding:0;
}
body{
    background-color: #e5e9ec;
    font-family: 'Fira Sans', sans-serif;
}

.main-menu{
    background-color: black;
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
    box-shadow: 0px 0px 20px #d4d4d4;

    width: 55px;
    height: 100vh;

    position: fixed;
    top:0;
    left:0;

    overflow-x: hidden;
    overflow-y: hidden;
    white-space: nowrap;

    transition: .3s ease;
}
.main-menu:hover{
    width : 250px;
    overflow-y: scroll;
}
.main-menu .menu-item{
    padding: 10px;
    color:white;
}
.main-menu .menu-item:hover{
    background-color: #C0C0C0;
    cursor: pointer;
}
.main-menu .menu-item .fa{
    color: white;
    width:40px;
    font-size: 25px;
    padding: 10px;
}
.main-menu .menu-item:hover > .fa{
    color: #1d0daa;
}
section.home{
    background-color: #323030;
}
::-webkit-scrollbar {
    width: 5px;
  }
::-webkit-scrollbar-track {
    background: transparent !important;
  }
::-webkit-scrollbar-thumb {
    background: #bbbbbb;
    border-radius: 10px;
  }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
<div class="main-menu">
        <ul>
            <section class="home">
            <div class="menu-item" id="main-menu">
            <div class="menu-item" id="main-menu-wrapper">
            <div class="user-info-wrapper">
        <div class="profile-wrapper" style="border:solid #fff 1px;"> <img src="../assets/img/admin.png"  alt="" data-src="../assets/img/admin.png" data-src-retina="../assets/img/admin.png" width="60" height="60"  /> </div>
        <div class="user-info" >
        <div class="greeting" style="font-size:14px;">Welcome</div>
          <div class="username" style="font-size:12px;"><?php echo $_SESSION['firstname'];?></div>
        </div>
      </div>
</section>
<section class="links">
<p class="menu-item"> <span class="pull-right"><a href="javascript:;"></a></span></p>
<li class="menu-item"> <a href="home.php"> <i class=" fa fa-home"></i> <span class="title" style="color:white; font-size:20px;">Dashboard</span> <span class="selected"></span> </a> </li>
<li class="menu-item" ><a href="change-password.php" style="color:white; font-size:20px;"><span class="fa fa-file-text-o"></span> Change Password</a></li>
<li class="menu-item" ><a href="profile.php" style="color:white; font-size:20px;"><span class="fa fa-user"></span> Profile</a></li>
<li class="menu-item"><a href="manage-users.php" style="color:white; font-size:20px;"><span class="fa fa-users"></span> Users</a></li>
<li class="menu-item"><a href="manage-tickets.php" style="color:white; font-size:20px;"><span class="fa fa-ticket"></span> Manage Ticket</a></li>
<li class="menu-item" ><a href="manage-quotes.php" style="color:white; font-size:20px;"> <span class="fa fa-tasks"></span> Manage Quotes</a></li>
<li class="menu-item"><a href="user-access-log.php" style="color:white; font-size:20px;"><span class="fa fa-users"></span>&nbsp;&nbsp;User Access Log</a></li>
</section>
</ul>
</div>
</body>
</html>