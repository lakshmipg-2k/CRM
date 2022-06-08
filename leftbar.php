
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
      <div  class="user-info-wrapper">
        <div class="profile-wrapper"> <img src="assets/img/user.png"  alt="" data-src="assets/img/user.png" data-src-retina="assets/img/user.png" width="69" height="69" /> </div>
        <div class="user-info">
          <div class="greeting" style="font-size:14px;">Welcome</div>
          <div class="username" style="font-size:12px;"><?php echo $_SESSION['name'];?></div>
          <div class="status" style="font-size:10px;"><a href="#">
            <div class="status-icon green"></div>
            Online</a></div>
        </div>
      </div>-->
            </section>
<section class="links">
<li class="menu-item"> <a href="dashboard.php" style="color:white; font-size:20px;"> <span class="fa fa-home"></span> Dashboard   </a>
</li><li class="menu-item"><a href="change-password.php" style="color:white; font-size:20px;"><span class="fa fa-file-text-o"></span> Change Password</a></li>
                            <li class="menu-item"><a href="profile.php" style="color:white; font-size:20px;"><span class="fa fa-user"></span> Profile</a></li>
 <li class="menu-item" ><a href="get-quote.php" style="color:white; font-size:20px;"> <span class="fa fa-tasks"></span> Request a Quote</a></li>
							     <li class="menu-item" ><a href="create-ticket.php" style="color:white; font-size:20px;"><span class="fa fa-ticket"></span> Create Ticket</a></li>
                                <li class="menu-item" ><a href="view-tickets.php" style="color:white; font-size:20px;"><span class="fa fa-ticket"></span> View Ticket</a></li>
</section>
</ul>
</div>
</body>
</html>