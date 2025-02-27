<%-- 
    Document   : donate
    Created on : 18 Nov, 2024, 1:50:11 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assect/titleLogo.png" type="image/png">
        <title>Donate</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./footer.css">
        <link rel="stylesheet" href="./navBar.css">
        <link rel="stylesheet" href="./Donate/donate.css">
        <link rel="stylesheet" href="./LoginRegistrationForgotPassword/login-registration-forgotPassword-style.css">



    </head>

    <body>
        <header>
              <jsp:include page="./navBar.jsp" />
        </header>
        <div class="container">
            <form action="donateJSP.jsp" method="post">
                <div class="row">
                    <div class="col-md-4 d-flex align-items-center justify-content-center order-md-0 order-2">
                        <div class="donate-side-bar gap-3">
                            <div><img src="./assect/logo.png" class="sidebarLogo"></div>
                            <div class="d-flex flex-column gap-2 align-items-center"
                                 style="border: 1px dashed orange; width: 180px; border-radius: 8px; padding: 10px 0; ">
                                <button id="d-donate-btn" class="donatebtn" type="button" value="Button">Direct Donate</button>
                                <button id="d-login-btn" class="donatebtn" type="button" value="Button">Donate With
                                    Login</button>

                            </div>
                            <div class="d-flex flex-column gap-2 align-items-center"
                                 style="border: 1px dashed rgb(112, 250, 255); width: 180px; border-radius: 8px; padding: 10px 0; ">
                                <div>
                                    <input type="checkbox" value="emailConfirmation" name="emailConfirmation"><span class="confirmation-message">Email
                                        confirmation</span>
                                </div>
                                <div><input type="checkbox" value="whatsappConfirmation" name="whatsappConfirmation"><span class="confirmation-message">Whatsapp
                                        confirmation</span></div>
                            </div>
                        </div>
                    </div>

                    <div class="firstForm col-md-4 d-flex align-items-center justify-content-center order-md-0 order-0">
                        <div class=" donateform d-flex flex-column">
                            <label for="firstName">Enter your first name</label>
                            <input type="text" name="firstName" id="firstName" placeholder="First name" required>
                            <label for="lastName">Enter your last name</label>
                            <input type="text" name="lastName" id="lastName" placeholder="Last name">
                            <label for="address">Enter your address</label>
                            <textarea rows="3" name="address" id="address" placeholder="Address" required></textarea>
                            <label for="email">Enter your Email</label>
                            <input type="email" name="email" id="email" placeholder="Email" required>
                        </div>
                    </div>

                    <div class="col-md-4 d-flex align-items-center justify-content-center order-md-0 order-1">
                        <div class=" donateform d-flex flex-column">
                            <label for="mobineNo">Enter your mobile number</label>
                            <input type="number" name="mobileNo" id="MobileNo" placeholder="Mobile number" required>
                            <label for="lastName">How did you know about us?</label>
                            <select name="knowAboutUs">
                                <option name="knowAboutUs" value="social media">Social media</option>
                                <option name="knowAboutUs" value="Campaign">Campaign</option>
                            </select>
                            <label for="donationType">Donation type</label>
                            <select name="donationType" id="donationType">
                                <option name="donationType" value="For plant maintenance">For plant maintenance</option>
                                <option name="donationType" value="For planting">For planting</option>
                            </select>

                        </div>


                    </div>
                </div>
                <div style="display: flex; justify-content: center;">
                    <input id="donateSubmitButton" type="submit" value="Submit">
                </div>
            </form>
        </div>

        <footer>
              <jsp:include page="./footer.jsp" />
        </footer>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

    <script src="./navBar.js"></script>
    <script src="./LoginRegistrationForgotPassword/login-registration-forgotPassword-script.js">

    </script>

    <script>
        document.querySelector("#d-login-btn").addEventListener("click", (e) => {
            e.preventDefault();
            let overly = document.querySelector(".overly");
            login.style.display = "block";
            overly.classList.add("overlyadd");
            // console.log(overly);


        });

    </script>

</html>