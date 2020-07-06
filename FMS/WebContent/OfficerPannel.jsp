<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*,java.text.*" %>
<%@ page import="java.io.*,java.util.Date"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Officer Pannel</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

</head>
<body>

<script>
function getConfirmation() {
    var retVal = confirm("Are You Sure To Log Out?");
    if( retVal == true ) {
 	   window.location = 'LogoutLoading.jsp';
       return true;
    } else {
 	   window.location = 'OfficerPannel.jsp';
       return false;
    }
 }
</script>
<% 
String name=(String)session.getAttribute("sessname"); 
String emp_id=(String)session.getAttribute("id"); 
String id=request.getParameter("id");
String designation=(String)session.getAttribute("designation");
 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"','"+designation+"';"); 
%> 

  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>
								
      <!--logo start-->
      <a href="index.html" class="logo">Forensic Management<span class="lite">&nbspSystem</span></a>
      <center> <a href="index.jsp" class="logo" style="color:white">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  Officer Pannel<span class="lite"></span></a></center>
      <!--logo end-->

      <!-- <div class="nav search-row" id="top_menu">
 search form start 
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Search" type="text">
            </form>
          </li>
        </ul>
       search form end 
      </div>
 -->
      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

          <!-- task notificatoin start -->
          <li id="task_notificatoin_bar" class="dropdown">
          <!--   <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-task-l"></i>
                            <span class="badge bg-important">5</span>
                        </a> -->
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 5 pending tasks</p>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Design PSD </div>
                    <div class="percent">90%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                      <span class="sr-only">90% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">
                      Project 1
                    </div>
                    <div class="percent">30%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                      <span class="sr-only">30% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Digital Marketing</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Logo Designing</div>
                    <div class="percent">78%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                      <span class="sr-only">78% Complete (danger)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Mobile App</div>
                    <div class="percent">50%</div>
                  </div>
                  <div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                      <span class="sr-only">50% Complete</span>
                    </div>
                  </div>

                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- task notificatoin end -->
          <!-- inbox notificatoin start-->
          <li id="mail_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 5 new messages</p>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 4 new notifications</p>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span>
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span>
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
              </li>
              <li>
                <a href="#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                               <!--  <img alt="" src="img/avatar1_small.jpg"> -->
                                 <img src="getIconImage.jsp?id=<%=emp_id%>" style="width: 43px;">
                            </span>
                              <span class="username"><% out.println(session.getAttribute("sessname")); %></span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="MyProfile.jsp?id=<%=emp_id%>"><i class="fas fa-id-card"></i> My Profile</a>
              </li>
              <li>
                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
              </li>
              <li>
                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
              </li>
              <li>
                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
              </li>
              <li>
                <a href="ChangePassword.jsp"><i class="fas fa-lock"></i>Change Password</a>
              </li>
              <li>
                <button onclick = "getConfirmation();" style="width:195px;"><a ><i class="fas fa-power-off"></i>&nbspLog Out</a></button>
              </li>
              <li>
                <a href="Documents/OfficerHelp.pdf" ><i class="fas fa-hands-helping"></i>Help</a>
              </li>
               
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
        <li class="active">
            <a class="" href="Welcome.jsp" target="">
                          <i class="fas fa-home"></i>
                          <span>Home</span>
                      </a>
          </li>
          <li class="active">
            <a class="" href="DefaultPage.jsp" target="container1">
                          <i class="fas fa-chart-line"></i>
                          <span>User Activites</span>
                      </a>
          </li>
          
<li class="sub-menu">
            <a href="javascript:;" class="">
                  <i class="fas fa-folder-plus"></i>
						<span>Register Case</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
           <!--   <li><a class="" href="index.jsp" target="container1"><i class='icon_document_alt'></i>Index</a></li> -->
              <li><a class="" href="FIR2.jsp" target="container1"><i class='fas fa-file-alt'></i>FIR</a></li>
              
              <li><a class="" href="NCR.jsp" target="container1"><i class='fas fa-file-alt' style='font-size:15px'></i>NCR</a></li>
              <li><a class="" href="NCRTableOfficer.jsp" target="container1"><i class='fas fa-list' style='font-size:15px'></i>My NCR List</a></li>
              <li><a class="" href="FIRTableOfficer.jsp" target="container1"><i class='fas fa-list' style='font-size:15px'></i>My FIR List</a></li>
              
            </ul>
           
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                     <i class="fas fa-photo-video" ></i>
						<span>Evidence</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
             
              <li><a class="" href="EvidenceNCRTable.jsp" target="container1"><i class='fas fa-file-alt' style='font-size:15px'></i>NCR Evidence </a></li>
              <li><a class="" href="EvidenceFIRTable.jsp" target="container1"><i class='fas fa-file-alt' style='font-size:15px'></i>FIR Evidence  </a></li>
              
            
            </ul>
          
          </li> 
           <li class="sub-menu">
            <a href="javascript:;" class="">
                     <i class="fas fa-photo-video" ></i>
						<span>Suspects</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
             
              <li><a class="" href="SuspectsNCRTable.jsp" target="container1"><i class='fas fa-file-alt' style='font-size:15px'></i>NCR Suspects </a></li>
              <li><a class="" href="SuspectsFIRTable.jsp" target="container1"><i class='fas fa-file-alt' style='font-size:15px'></i>FIR Suspects  </a></li>
              
            
            </ul>
          
          </li> 
          
 <li class="sub-menu">
            <a href="javascript:;" class="">
                     <i class="fas fa-file-pdf" ></i>
						<span>Reports</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
             
              <li><a class="" href="MyProfileRpt.jsp" target="container1"><i class='fas fa-id-card'></i>MyProfile Report</a></li>
            
            </ul>
          
          </li> 
  
              
                    </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
    -- container section end -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery validate js -->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>

  <!-- custom form validation script for this page-->
  <script src="js/form-validation-script.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>  
  <div class="embed-responsive embed-responsive-16by9" >
  <iframe class="embed-responsive-item" name="container1" src="DefaultPage.jsp" style="width:100%;height:630px;"></iframe>
</div>
<%-- <%
}

else
{
	
	response.sendRedirect("EmployeeLogin.jsp");
}
   %>  --%>
  

</body>
</html>