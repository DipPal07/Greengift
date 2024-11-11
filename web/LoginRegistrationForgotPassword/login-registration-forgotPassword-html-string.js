const login_registration_forgotPassword_html_string = ` <!-- Login registration and forgot password -->
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
    </div>`;
export default login_registration_forgotPassword_html_string;
