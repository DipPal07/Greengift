<%-- 
    Document   : index
    Created on : 18 Nov, 2024, 1:42:33 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assect/titleLogo.png" type="image/png">
    <title>Home</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./navBar.css">
    <link rel="stylesheet" href="./footer.css">
    <link rel="stylesheet" href="./Index/index.css">
    <link rel="stylesheet" href="./LoginRegistrationForgotPassword/login-registration-forgotPassword-style.css">
</head>

<body>
    <header>
        <jsp:include page="./navBar.jsp" />
    </header>
    <div>
        <div class="container-fluid heroContainer">
            <!-- <img src=".../assect/heroimage.jpg" class="img-fluid heroImage" alt="..."></img> -->
            <div class="container">
                <p id="heroMainText">Grow Hope,</p>
                <p id="heroChangableText"> <span id="element"> Everywhere...|</span></p>
                <p id="heroDescription">Plant donation is crucial for promoting reforestation, combating climate change,
                    and enhancing
                    biodiversity. It helps
                    restore ecosystems, improves air and soil quality, and supports wildlife habitats. Additionally, it
                    fosters community
                    involvement and awareness about environmental sustainability, creating a collective effort towards a
                    healthier planet
                    for future generations.....</p>
            </div>



        </div>
        <div class="container">
            <div>
                <h2>Make green with technology</h2>
            </div>
            <div class="row justify-content-center align-items-center g-2 greeTechnologyCardContainer">
                <div class="col-md d-flex justify-content-center align-items-center g-2 greeTechnologyCardContainer">
                    <div class="greeTechnologyCard">
                        <div><img src="./assect/tree-1.jpg" class="greeTechnologyCardImage"></div>
                        <div style="padding: 5px;">
                            <p class="greeTechnologyCardHeading">Innovating for a Sustainable Future</p>
                            <p class="greeTechnologyCardDescription">Coconuts are used for food, fuel, cosmetics, folk
                                medicine.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md d-flex justify-content-center align-items-center g-2 greeTechnologyCardContainer">
                    <div class="greeTechnologyCard">
                        <div><img src="./assect/tree-2.jpg" class="greeTechnologyCardImage"></div>
                        <div style="padding: 5px;">
                            <p class="greeTechnologyCardHeading">Tech Meets Nature: Building a Greener World</p>
                            <p class="greeTechnologyCardDescription">Coconuts are used for food, fuel, cosmetics, folk
                                medicine.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md d-flex justify-content-center align-items-center g-2 greeTechnologyCardContainer">
                    <div class="greeTechnologyCard">
                        <div><img src="./assect/plant-1.jpg" class="greeTechnologyCardImage"></div>
                        <div style="padding: 5px;">
                            <p class="greeTechnologyCardHeading">Smart Solutions for a Sustainable Planet</p>
                            <p class="greeTechnologyCardDescription">Coconuts are used for food, fuel, cosmetics, folk
                                medicine.</p>
                        </div>
                    </div>

                </div>
                <div class="col-md d-flex justify-content-center align-items-center g-2 greeTechnologyCardContainer">
                    <div class="greeTechnologyCard">
                        <div><img src="./assect/plant-2.png" class="greeTechnologyCardImage"></div>
                        <div style="padding: 5px;">
                            <p class="greeTechnologyCardHeading">Eco-Tech: Driving Change, Growing Green</p>
                            <p class="greeTechnologyCardDescription">Coconuts are used for food, fuel, cosmetics, folk
                                medicine.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="container-fluid planting-tree-importence">
            <div class="container">
                <div class="row">
                    <div class="col-md-4" style="display: flex; justify-content: center;"><img
                            src="./assect/importenceOfPlanting.png" class="importenceOfPlantingImage"></div>
                    <div class="col-md-8 importenceOfPlantingContent">
                        <p class="importenceOfPlantingHeading">The Vital Importance of Planting Trees</p>
                        <p class="importenceOfPlantingDescription">Trees are essential to our planet's health and our
                            well-being. They act as the lungs of the
                            Earth, absorbing carbon
                            dioxide and releasing oxygen, which is crucial for life. By planting trees, we combat
                            climate change, as they help
                            reduce greenhouse gas emissions and regulate temperatures.</p>
                        <p class="importenceOfPlantingDescription">Additionally, trees play a significant role in
                            preserving biodiversity. They provide habitat
                            and food for countless
                            species, contributing to ecological balance. Urban areas benefit immensely from trees, as
                            they enhance air quality,
                            reduce noise pollution, and offer shade, making our cities more livable.
                        </p>
                        <p class="importenceOfPlantingDescription">
                            Moreover, trees prevent soil erosion, maintain water cycles, and improve overall land
                            fertility, supporting agriculture
                            and ensuring food security. They also have psychological benefits; green spaces promote
                            mental health, reduce stress,
                            and encourage physical activity.

                        </p>
                        <p class="importenceOfPlantingDescription">In essence, planting trees is a simple yet powerful
                            act that nurtures our environment,
                            enriches our lives, and
                            safeguards the future for generations to come. Each tree planted is a step toward a
                            healthier planet and a brighter
                            tomorrow.</p>
                    </div>
                </div>
            </div>

        </div>
        <div class="container">
            <div>
                <h2>Partner Sponsorship</h2>
            </div>
            <div style="display: flex;overflow:auto;justify-content: center;align-items: center;">

                <div><img src="./assect/tata.png" class="sponsorLogo"></div>
                <div><img src="./assect/bankofboroda.png" class="sponsorLogo"></div>
                <div><img src="./assect/relaince.png" class="sponsorLogo"></div>
                <div><img src="./assect/axis.png" class="sponsorLogo"></div>

            </div>
        </div>
        <div class="container">
            <div>
                <h2>Award & Achievement</h2>
            </div>
            <div class=" row d-flex awardCardContainer">

                <div class="col-md-3 d-flex align-items-center justify-content-center" style="margin-bottom: 35px;">
                    <div class="awardCard">
                        <img src="./assect/award.png" class="awardImage">
                        <div>
                            <p class="greeTechnologyCardHeading text-center">Green Initiative Award</p>
                            <p class="greeTechnologyCardDescription text-center">Recognized for leading a successful
                                tree
                                planting
                                campaign, enhancing local green spaces and
                                promoting environmental
                                awareness in the community.</p>
                        </div>
                    </div>
                </div>
                <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                    <div class="awardCard"><img src="./assect/award.png" class="awardImage">

                        <div>
                            <p class="greeTechnologyCardHeading text-center">The Green Guardian Award</p>
                            <p class="greeTechnologyCardDescription text-center">Recognized for leading a successful
                                tree
                                planting
                                campaign, enhancing local green spaces and
                                promoting environmental
                                awareness in the community.</p>
                        </div>
                    </div>
                </div>
                <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                    <div class="awardCard"><img src="./assect/award.png" class="awardImage">
                        <div>
                            <p class="greeTechnologyCardHeading text-center">Roots of Kindness Award</p>
                            <p class="greeTechnologyCardDescription text-center">Recognized for leading a successful
                                tree
                                planting
                                campaign, enhancing local green spaces and
                                promoting environmental
                                awareness in the community.</p>
                        </div>
                    </div>
                </div>
                <div style="margin-bottom: 35px;" class="col-md-3 d-flex align-items-center justify-content-center">
                    <div class="awardCard">
                        <img src="./assect/award.png" class="awardImage">
                        <div>
                            <p class="greeTechnologyCardHeading text-center">The Sapling Savior Award</p>
                            <p class="greeTechnologyCardDescription text-center">Recognized for leading a successful
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
    <footer>
          <jsp:include page="./footer.jsp" />

    </footer>
    <!-- <script>
        var typed = new Typed('#element', {
            strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
            typeSpeed: 50,
        });
    </script> -->
    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>

    <!-- Setup and start animation! -->
    <script>
        var typed = new Typed('#element', {
            strings: ['One Plant at a Time...', 'Spread Joy Everywhere...', 'Change Lives Today...', 'Nurture Our Future...', 'Make the Earth Bloom...'],
            typeSpeed: 50,
        });
    </script>
</body>
<!-- <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
<script src="./navBar.js"></script>
<script src="./LoginRegistrationForgotPassword/login-registration-forgotPassword-script.js"></script>

</html>