<%-- 
    Document   : navBar
    Created on : 18 Nov, 2024, 1:38:08 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Retrieve user_id from session
    String user_id = (String) session.getAttribute("user_id");
   

%>

<nav>

    <ul class='sidebar'>
        <li><a class='navItem'><svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960'
                                    width='24px' fill='#e8eaed' onclick='closeside()'>
                    <path
                        d='m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z' />
                </svg></a></li>
        <li><a href='./index.jsp' class='navItem'>Home</a></li>
        <li><a href='./approach.jsp' class='navItem'>Approach</a></li>
        <li><a href='./donate.jsp' class='navItem'>Donate</a></li>
        <li><a href='./about.jsp' class='navItem'>About</a></li>
        <li><a href='./contact.jsp' class='navItem'>Contact</a></li>
            <%  if (user_id == null) {%>

        <li class='liBtn' id="showLogin" > <a href='#' class='loginBtn' >Login</a></li>
        <li class='liBtn' id="showRegistration"> <a href='#' class='loginBtn' >Registration</a></li>
            <%} else {%>
        <li class='liBtn'> <a href='./dashboard.jsp' class='loginBtn' >Dashboard</a></li>

        <%}%>


    </ul>
    <ul>

        <li><a id='logo' href='#'><img src='./assect/logo.png' class='navbarLogo' /></a></li>
        <li class='hideOnMobile'><a href='./index.jsp' class='navItem'>Home</a></li>
        <li class='hideOnMobile'><a href='./approach.jsp' class='navItem'>Approach</a></li>
        <li class='hideOnMobile'><a href='./donate.jsp' class='navItem'>Donate</a></li>
        <li class='hideOnMobile'><a href='./about.jsp' class='navItem'>About</a></li>
        <li class='hideOnMobile'><a href='./contact.jsp' class='navItem'>Contact</a></li>
            <%  if (user_id == null) {%>
        <li class='hideOnMobile liBtn' id="showLogin"><a href='#' class='loginBtn'>Login</a></li>
        <li class='hideOnMobile liBtn' id="showRegistration"> <a href='#' class='loginBtn'>Registration</a></li>
            <%} else {%>
        <li class='hideOnMobile liBtn'> <a href='./dashboard.jsp' class='loginBtn'>Dashboard</a></li>
            <%}%>
        <li class='manu-btn'>
            <a href='#' class='navItem'><svg xmlns='http://www.w3.org/2000/svg' height='30px'
                                             viewBox='0 -960 960 960' width='30px' fill='#fffff' onclick=mainDivf()>
                    <path d='M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z' />
                </svg></a>
        </li>
    </ul>

</nav>
<div>
    <div id="loginAndRegistration">
        <form class="login-registration-form" id="login" name="login" method="post" action="loginJsp.jsp">
            <div class="formMainDiv">
                <div class="loginImage">
                    <div class="x">
                        <img src="./assect/x1.png" class="ximage" id="xlog" />
                    </div>
                    <p id="brandName">GreenGifts</p>
                </div>
                <div class="loginContent">
                    <label class="login-registration-label" for="email">Email</label>
                    <input class="login-registration-input" name="email" type="text"
                           placeholder="Enter your email" />
                    <label class="login-registration-label" for="password">Password</label>
                    <input class="login-registration-input" name="password" type="password"
                           placeholder="Enter your password" />
                    <input class="login-registration-btn" type="submit" value="Login" />

                    <p>
                        don,t remember password?<a class="aLink" id="showForgotPassword">Forget password</a>
                    </p>
                </div>
            </div>
        </form>
        <form class="login-registration-form" id="registration" name="registration" method="post"
              action="Registration">
            <div class="formMainDiv">
                <div class="loginImage">
                    <div class="x">
                        <img src="./assect/x1.png" class="ximage" id="xreg" />
                    </div>
                    <p id="brandName">GreenGifts</p>
                </div>
                <div class="loginContent">
                    <label class="login-registration-label" for="name">Name</label>
                    <input class="login-registration-input" name="name" type="text" placeholder="Enter your name" />
                    <label class="login-registration-label" for="mobileNo">Mobile Number</label>
                    <input class="login-registration-input" name="mobileNo" type="text"
                           placeholder="Enter your mobile number" />
                    <label class="login-registration-label" for="email">Email</label>
                    <input class="login-registration-input" name="email" type="text"
                           placeholder="Enter your email" />

                    <label class="login-registration-label" for="password">Password</label>
                    <input class="login-registration-input" name="password" type="password"
                           placeholder="Enter your password" />
                    <label class="login-registration-label" for="address">Address</label>
                    <textarea class="addressInputBox" id="address" type="text" placeholder="Enter your address"
                              name="address"></textarea>
                    <input class="login-registration-btn" type="submit" value="Register" />
                    <p>already have account?<a class="aLink openLogin" href="#">Login</a></p>
                </div>
            </div>
        </form>
        <form class="login-registration-form" id="forgotPassword" name="forgotPassword" method="post"
              action="ForgotPassword">
            <div class="formMainDiv">
                <div class="loginImage">
                    <div class="x">
                        <img src="./assect/x1.png" class="ximage" id="xfor" />
                    </div>
                    <p id="brandName">GreenGifts</p>
                </div>
                <div class="loginContent">
                    <label class="login-registration-label" for="email">Email</label>
                    <input class="login-registration-input" name="email" type="text"
                           placeholder="Enter your email" />

                    <label class="login-registration-label" for="newPassword">New password</label>
                    <input class="login-registration-input" id="newPassword" name="newPassword" type="password"
                           placeholder="Enter your new password" />
                    <label class="login-registration-label" for="confirmNewPassword"> Confirm new password</label>

                    <input class="login-registration-input" id="confirmNewPassword" name="confirmNewPassword"
                           type="password" placeholder="Enter your new password" />
                    <label class="login-registration-label" for="otp">OTP</label>
                    <input class="login-registration-input" id="otp" name="otp" type="text"
                           placeholder="Enter your otp" />

                    <input class="login-registration-btn" type="submit" value="Change" />

                    <p>remember password?<a class="aLink openLogin" href="#">login</a></p>
                </div>
            </div>
        </form>
    </div>
    <div class="overly"></div>
</div>