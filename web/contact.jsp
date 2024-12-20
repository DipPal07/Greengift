<%-- 
    Document   : contact
    Created on : 18 Nov, 2024, 1:47:42 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assect/titleLogo.png" type="image/png">
        <title>Contact</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./footer.css">
        <link rel="stylesheet" href="./navBar.css">
        <link rel="stylesheet" href="./Contact/contact.css">
        <link rel="stylesheet" href="./LoginRegistrationForgotPassword/login-registration-forgotPassword-style.css">


    </head>

    <body>
        <header>
              <jsp:include page="./navBar.jsp" />
        </header>
        <div style="margin-bottom: 40px;">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-4 col-12 d-flex justify-content-center">
                        <div class="contactUsMain">
                            <form name="contact" action="contactUsJsp.jsp" method="post" id="contact-form">
                                <label for="c-name">Name</label>
                                <input id="c-name" type="text" name="name" class="textInput"
                                       placeholder="Enter your name" />
                                <label for="c-mobileNo">Mobile number</label>
                                <input id="c-mobileNo" type="text" name="mobileNo" class="textInput"
                                       placeholder="Enter your mobile number" />
                                <label for="c-email">Email address</label>

                                <input id="c-email" type="text" name="email" class="textInput"
                                       placeholder="Enter your email" />
                                <label for="c-message">Message</label>
                                <textarea id="c-message" type="text" name="message"
                                          placeholder="Enter your message"></textarea>
                                <input type="submit" class="button" />
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12 d-flex justify-content-center">
                        <img src="./assect/plant-2.png" alt="" class="contactImage" />
                    </div>
                </div>
            </div>

        </div>
        <footer>
              <jsp:include page="./footer.jsp" />
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

    <script src="./navBar.js"></script>
    <script src="./LoginRegistrationForgotPassword/login-registration-forgotPassword-script.js"></script>


</html>