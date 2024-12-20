<%-- 
    Document   : approach
    Created on : 18 Nov, 2024, 1:47:23 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assect/titleLogo.png" type="image/png">
        <title>Approach</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./footer.css">
        <link rel="stylesheet" href="./navBar.css">
        <link rel="stylesheet" href="./LoginRegistrationForgotPassword/login-registration-forgotPassword-style.css">
        <style>
            /* Reset */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            /* General Styles */
            body {
                font-family: Arial, sans-serif;
                line-height: 1.6;
                color: #333;
                /*background-color: #f5f5f5;*/
                background-color: white
            }


            /* Approach Section */
            .approach-section {
                max-width: 1200px;
                margin: 2rem auto;
                padding: 1rem;
            }

            .approach-section .intro {
                text-align: center;
                margin-bottom: 2rem;
            }

            .approach-section h2 {
                font-size: 2.5rem;
                color: #4CAF50;
            }

            .approach-section p {
                color: #555;
                font-size: 1.1rem;
                max-width: 800px;
                margin: 0 auto;
            }

            .approach-details {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around;
                gap: 1.5rem;
            }

            .card {
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 1.5rem;
                width: 300px;
                text-align: center;
            }

            .card h3 {
                color: #4CAF50;
                margin-bottom: 0.5rem;
            }

            .card p {
                font-size: 1rem;
                color: #666;
            }

            /* Impact Section */
            .impact-section {
                background-color: #e9f5e9;
                padding: 2rem 1rem;
                text-align: center;
            }

            .impact-intro h2 {
                font-size: 2.5rem;
                color: #4CAF50;
            }

            .impact-intro p {
                color: #555;
                font-size: 1.1rem;
                max-width: 800px;
                margin: 0 auto 2rem;
            }

            .impact-stats {
                display: flex;
                justify-content: center;
                gap: 2rem;
            }

            .stat {
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 1rem;
                width: 150px;
                text-align: center;
            }

            .stat h3 {
                font-size: 2rem;
                color: #4CAF50;
            }

            .stat p {
                color: #555;
                font-size: 1rem;
            }

            /* Vision Section */
            .vision-section {
                max-width: 1000px;
                margin: 2rem auto;
                padding: 1rem;
                text-align: center;
            }

            .vision-section h2 {
                font-size: 2.5rem;
                color: #4CAF50;
            }

            .vision-section p {
                color: #555;
                font-size: 1.1rem;
                margin: 1rem 0;
                line-height: 1.8;
            }


        </style>

    </head>

    <body>
        <header>
              <jsp:include page="./navBar.jsp" />
        </header>
        <section class="approach-section">
            <div class="intro">
                <h2>Our Approach</h2>
                <p>At GreenGift, we believe in creating a sustainable future by connecting people who care about nature. Our approach is rooted in simplicity, transparency, and community-driven action.</p>
            </div>

            <div class="approach-details">
                <div class="card">
                    <h3>Collecting Plants</h3>
                    <p>We gather plants and saplings from generous donors who have a passion for greenery. Each plant is inspected and prepared for adoption.</p>
                </div>
                <div class="card">
                    <h3>Matching Donors and Recipients</h3>
                    <p>We carefully match each plant to a recipient based on the environment and care level it requires, ensuring a long-lasting bond.</p>
                </div>
                <div class="card">
                    <h3>Creating a Greener Future</h3>
                    <p>Every plant you donate helps combat climate change and builds a community focused on environmental conservation.</p>
                </div>
            </div>
        </section>

        <section class="impact-section">
            <div class="impact-intro">
                <h2>Our Impact</h2>
                <p>Our work goes beyond just plant donations. We are building a community that’s committed to nurturing nature and fostering sustainable habits.</p>
            </div>

            <div class="impact-stats">
                <div class="stat">
                    <h3>500+</h3>
                    <p>Plants Donated</p>
                </div>
                <div class="stat">
                    <h3>200+</h3>
                    <p>Happy Recipients</p>
                </div>
                <div class="stat">
                    <h3>30+</h3>
                    <p>Community Events</p>
                </div>
            </div>
        </section>

        <section class="vision-section">
            <h2>Our Vision for the Future</h2>
            <p>GreenGift is dedicated to inspiring sustainable living through plant gifting. We envision a future where every household has the opportunity to contribute to a greener world. Through education, community support, and environmental advocacy, we are planting the seeds for lasting change.</p>
            <p>Our vision is to foster a new generation that respects nature, values conservation, and understands the role each individual plays in protecting our planet.</p>
        </section>
        <footer>
              <jsp:include page="./footer.jsp" />
        </footer>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

    <script src="./navBar.js"></script>

</html>