<%-- 
    Document   : about
    Created on : 18 Nov, 2024, 1:46:50 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assect/titleLogo.png" type="image/png">
        <title>About</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./footer.css">
        <link rel="stylesheet" href="./navBar.css">
        <link rel="stylesheet" href="./About/about.css">
        <link rel="stylesheet" href="./LoginRegistrationForgotPassword/login-registration-forgotPassword-style.css">


    </head>

    <body>
        <header>
                <jsp:include page="./navBar.jsp" />
        </header>
        <div>
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-12 col-lg-5 d-flex justify-content-center">
                        <div class="paraContainer">
                            <p class="commonHeading">Who We Are</p>
                            <p class="commonParagraph">
                                GreenGifts is more than just a website—it’s a movement. We’re a
                                non-profit organization dedicated to making the world greener, one
                                tree at a time. Since our inception in 2014, we’ve been on a
                                mission to simplify environmental action by empowering individuals
                                and businesses to contribute to reforestation efforts.
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5 d-flex justify-content-center">
                        <img src="./assect/plant-1.jpg" class="aboutImage" />
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="order-lg-0 order-1 col-12 col-lg-5 d-flex justify-content-center">
                        <img src="./assect/tree-2.jpg" class="aboutImage" />
                    </div>
                    <div class="order-lg-1 order-0 col-12 col-lg-5 d-flex justify-content-center">
                        <div class="paraContainer">
                            <p class="commonHeading">Our Vision</p>
                            <p class="commonParagraph">
                                We envision a planet where forests thrive, biodiversity
                                flourishes, and communities coexist harmoniously with nature. By
                                planting trees, we create a positive ripple effect—restoring
                                ecosystems, combating climate change, and fostering a healthier,
                                more sustainable future.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">

                    <div class="col-12 col-lg-5 d-flex justify-content-center">
                        <div class="paraContainer">
                            <p class="commonHeading">What We Do</p>
                            <p class="commonParagraph">
                            <ol>
                                <li>
                                    Planting Trees Across the Globe
                                    <ul>
                                        <li>135.5 Million Trees and Counting: Together with our 378 partners, we’ve planted
                                            over
                                            135.5 million trees in 82 countries across North America, Latin America, Africa,
                                            Asia, Europe, and the Pacific. Each tree represents hope, resilience, and
                                            growth.
                                        </li>
                                        <li> Rain or Shine: Our dedicated teams plant saplings during the rainy season,
                                            ensuring
                                            their survival and growth.</li>
                                        <li>Continuous Monitoring: We don’t stop at planting. We monitor the health and
                                            progress
                                            of every tree to maximize its impact.</li>
                                    </ul>
                                </li>
                                <li>Global Reforestation Projects
                                    <ul>
                                        <il>Restoring After Fires and Floods: We step in when disaster strikes, rejuvenating
                                            forests that have faced wildfires or floods.</il>
                                        <li>Creating Jobs and Communities: Our efforts create employment opportunities and
                                            strengthen local communities.</li>
                                        <li>
                                            Wildlife Habitat Protection: Trees provide shelter and sustenance for countless
                                            species. By protecting their habitat, we safeguard biodiversity.
                                        </li>
                                    </ul>
                                </li>

                            </ol>
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5 d-flex img-align">
                        <img src="./assect/tree-1.jpg" class="aboutImage" />
                    </div>
                </div>
            </div>
            <div class="container">



                <div>
                    <h2>Meet our team</h2>
                </div>
                <div class=" row d-flex our-team-CardContainer">

                    <div class="col-md-3 d-flex align-items-center justify-content-center" style="margin-bottom: 35px;">
                        <div class="our-team-Card">
                            <img src="./assect/female.png" class="our-team-Image">
                            <div>
                                <p class="teamCardHeading text-center">Dip Kumar Pal</p>
                                <p class="teamCardDescription text-center">Recognized for leading a successful
                                    tree
                                    planting
                                    campaign, enhancing local green spaces and
                                    promoting environmental
                                    awareness in the community.</p>
                            </div>
                        </div>
                    </div>
                    <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                        <div class="our-team-Card"><img src="./assect/male.png" class="our-team-Image">

                            <div>
                                <p class="teamCardHeading text-center">Dip Kumar Pal</p>
                                <p class="teamCardDescription text-center">Recognized for leading a successful
                                    tree
                                    planting
                                    campaign, enhancing local green spaces and
                                    promoting environmental
                                    awareness in the community.</p>
                            </div>
                        </div>
                    </div>
                    <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                        <div class="our-team-Card"><img src="./assect/female.png" class="our-team-Image">
                            <div>
                                <p class="teamCardHeading text-center">Dip Kumar Pal</p>
                                <p class="teamCardDescription text-center">Recognized for leading a successful
                                    tree
                                    planting
                                    campaign, enhancing local green spaces and
                                    promoting environmental
                                    awareness in the community.</p>
                            </div>
                        </div>
                    </div>
                    <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                        <div class="our-team-Card">
                            <img src="./assect/female.png" class="our-team-Image">
                            <div>
                                <p class="teamCardHeading text-center">Dip Kumar Pal</p>
                                <p class="teamCardDescription text-center">Recognized for leading a successful
                                    tree
                                    planting
                                    campaign, enhancing local green spaces and
                                    promoting environmental
                                    awareness in the community.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script>



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