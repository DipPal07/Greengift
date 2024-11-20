<%-- 
    Document   : dashboard.jsp
    Created on : 26 Oct, 2024, 8:35:53 PM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session = request.getSession();
    String user_name = (String) session.getAttribute("user_name");
    String user_email = (String) session.getAttribute("user_email");
    if (user_name == null || user_email == null) {
        response.sendRedirect("./accessDenied.html");
    }
//                    

%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assect/titleLogo.png" type="image/png">
        <title>Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <style>
            
            .dashboardSidebar {
                background-color: #002A2B;
                min-height: 100vh;
                /* boarder-top-right-radius: 20px;
                boarder-bottom-right-radius: 20px; */
                border-top-right-radius: 20px;
                border-bottom-right-radius: 20px;

                transition-duration: 0.5s;
            }

            .dashboardSidebar:hover {
                background-color: #001b0b;
            }

            .dashboardUserImage {
                max-width: 80px;
            }

            #userName {
                font-size: 17px;
                font-weight: 700;
                color: white;
                line-height: 16px;

            }

            #userEmail {
                font-size: 11px;
                color: rgb(197, 197, 197);
            }

            p {
                margin: 0;
                padding: 0;
            }

            .navigation-icon {
                width: 16px;
                margin-bottom: 4px;
            }

            .dashboardNavigationContainer {
                /* background-color: red; */
                margin: 50px 0;
            }

            .dashboardNavigationText {
                color: #FFF;

                font-size: 13.87px;
                font-style: normal;
                font-weight: 600;
                margin-left: 5px;

            }

            .dashboardNavigationDiv {
                cursor: pointer;
                margin: 20px 0;
            }

            .contact-us-container {
                border-radius: 30.822px;
                border: 0.771px solid #7C71FF;
                background: linear-gradient(230deg, #483FBD 2.11%, rgba(46, 46, 72, 0.00) 102.63%);
                box-shadow: 0px 3.082px 25.428px 0px rgba(0, 0, 0, 0.25);
                padding: 25px;
                position: absolute;
                bottom: 50px;
            }

            .dashboardMainContainer {
                background-image: url('./assect/dashboard.jpg');


                /* box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); */
            }

            .donation-info-text {
                flex: 1;
                color: #000;
                font-size: 13px;
                font-weight: 400;
                padding: 10px 16px;
                background-color: #D6EADC;
                margin: 10px;
                border-radius: 10px;
            }

            .donation-info-main-container {

                background-color: #002A2B;
                border-radius: 10px;
                color: white;
                max-width: 620px;
                margin-top: 10px;

            }

            .donation-type-text {
                font-size: 11px;

                font-weight: 400;
                color: #002A2B;
                background-color: #00E861;
                display: inline;
                padding: 5px 13px;
                border-radius: 10px;
            }

            .donation-date-text {
                color: #FFF;

                font-size: 11px;
                padding-left: 5px;
                padding-top: px;

            }

            .donation-card-main-container {
                max-width: 360px;
                max-height: 305px;
                background-color: #2E2E48;
                border-radius: 30px;
                padding: 8px;
                transition-duration: 0.5s;
                /* overflow: hidden; */
            }

            .donation-card-main-container:hover {
                transform: scale(1.05);
            }

            .working-status-text {
                color: #FFF;
                font-family: Inter;
                font-size: 16px;
                font-style: normal;
                font-weight: 400;
                line-height: 16px;
                text-align: center;
                background-color: #006769;
                padding: 12px 0;
                border-radius: 5px;
            }

            .donation-amount-text {
                color: #FFF;
                font-family: Inter;
                font-size: 16px;
                font-style: normal;
                font-weight: 400;
                line-height: 16px;
                text-align: center;
                margin: 10px 0;
            }

            .donation-spending-info-container {
                margin: 10px;
                border-radius: 10px;
                background-color: #2A2A41;
                padding: 5px;
                color: white;
                max-height: 155px;
                overflow: auto;
                scrollbar-width: thin;

            }

            #mobileNavView {
                display: none;
            }

            #closeSideNav {
                display: none;
            }



            @media only screen and (max-width:780px) {
                .donation-info-main-container {
                    flex-direction: column;
                }

                .donation-info-text {
                    text-align: center;
                }

                .donation-card-main-container {
                    margin: 10px 0;
                }

                .dashboard-info-card {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;

                }


                #dashboard-mobile {
                    display: none;

                }

                .dashboardSidebar {
                    width: 300px;
                    position: absolute;
                    right: 0;

                    z-index: 5;
                    border-radius: 20px 0 0 20px;
                }

                #mobileNavView {
                    display: block;
                }

                #closeSideNav {
                    display: block;
                }


            }
        </style>
    </head>

    <body>
        <header id="mobileNavView">
            <div
                style="background-color: #00E861; height: 50px; display: flex; align-items: center;justify-content: flex-end; padding-right: 25px;">
                <svg xmlns="http://www.w3.org/2000/svg" style="height: 35px; cursor: pointer;" id="openNavbar"
                     viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                <path
                    d="M0 96C0 78.3 14.3 64 32 64l384 0c17.7 0 32 14.3 32 32s-14.3 32-32 32L32 128C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32l384 0c17.7 0 32 14.3 32 32s-14.3 32-32 32L32 288c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32L32 448c-17.7 0-32-14.3-32-32s14.3-32 32-32l384 0c17.7 0 32 14.3 32 32z" />
                </svg>
            </div>
        </header>

        <div class="container-fluid dashboardMainContainer" style="min-height: 100vh;">
            <div class="row">
                <div class="col-md-2" id="dashboard-mobile" style="padding-left: 0;">
                    <div class="dashboardSidebar d-flex flex-column align-items-center">
                        <div style="margin-bottom: 10px;">
                            <img src="./assect/logo.png
                                 " alt="" class="img-fluid">
                        </div>
                        <div class="d-flex flex-column align-items-center"><img src="./assect/male.png" alt=""
                                                                                class="dashboardUserImage">
                            <p id="userName"><%= user_name%></p>
                            <p id="userEmail"><%= user_email%></p>
                        </div>
                        <div class="dashboardNavigationContainer">
                            <div class="dashboardNavigationDiv"><svg xmlns="http://www.w3.org/2000/svg"
                                                                     class="navigation-icon"
                                                                     viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                <path fill="white"
                                      d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                                </svg><span class="dashboardNavigationText">Dashboard</span></div>
                            <div onclick="window.location.href = './editProfile.jsp'" class="dashboardNavigationDiv"><svg xmlns="http://www.w3.org/2000/svg" class="navigation-icon" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="m370-80-16-128q-13-5-24.5-12T307-235l-119 50L78-375l103-78q-1-7-1-13.5v-27q0-6.5 1-13.5L78-585l110-190 119 50q11-8 23-15t24-12l16-128h220l16 128q13 5 24.5 12t22.5 15l119-50 110 190-103 78q1 7 1 13.5v27q0 6.5-2 13.5l103 78-110 190-118-50q-11 8-23 15t-24 12L590-80H370Zm70-80h79l14-106q31-8 57.5-23.5T639-327l99 41 39-68-86-65q5-14 7-29.5t2-31.5q0-16-2-31.5t-7-29.5l86-65-39-68-99 42q-22-23-48.5-38.5T533-694l-13-106h-79l-14 106q-31 8-57.5 23.5T321-633l-99-41-39 68 86 64q-5 15-7 30t-2 32q0 16 2 31t7 30l-86 65 39 68 99-42q22 23 48.5 38.5T427-266l13 106Zm42-180q58 0 99-41t41-99q0-58-41-99t-99-41q-59 0-99.5 41T342-480q0 58 40.5 99t99.5 41Zm-2-140Z"/></svg><span class="dashboardNavigationText">Edit profile</span></div>
                            <div onclick="window.location.href = './changePassword.jsp'" class="dashboardNavigationDiv"><svg xmlns="http://www.w3.org/2000/svg" class="navigation-icon" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M120-160v-80h110l-16-14q-52-46-73-105t-21-119q0-111 66.5-197.5T360-790v84q-72 26-116 88.5T200-478q0 45 17 87.5t53 78.5l10 10v-98h80v240H120Zm717-360h-81q-5-35-21.5-67T690-648l-10-10v98h-80v-240h240v80H730l16 14q41 42 63 89t28 97ZM680-40l-12-60q-12-5-22.5-10.5T624-124l-58 18-40-68 46-40q-2-14-2-26t2-26l-46-40 40-68 58 18q11-8 21.5-13.5T668-380l12-60h80l12 60q12 5 22.5 11t21.5 15l58-20 40 70-46 40q2 12 2 25t-2 25l46 40-40 68-58-18q-11 8-21.5 13.5T772-100l-12 60h-80Zm40-120q33 0 56.5-23.5T800-240q0-33-23.5-56.5T720-320q-33 0-56.5 23.5T640-240q0 33 23.5 56.5T720-160Z"/></svg><span class="dashboardNavigationText">Change password</span></div>
                                
                            <div onclick="window.location.href = './logout.jsp'" class="dashboardNavigationDiv"><svg xmlns="http://www.w3.org/2000/svg"
                                                                     class="navigation-icon"
                                                                     viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                <path fill="white"
                                      d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z" />
                                </svg><span class="dashboardNavigationText" >Logout</span></div>
                            <div onclick="window.location.href = './index.jsp'" class="dashboardNavigationDiv"><svg xmlns="http://www.w3.org/2000/svg"
                                                                     class="navigation-icon"
                                                                     viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                <path fill="white"
                                      d="M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416L0 96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4L224 214.3l0 41.7 0 41.7L52.5 440.6zM256 352l0-96 0-128 0-32c0-12.4 7.2-23.7 18.4-29s24.5-3.6 34.1 4.4l192 160c7.3 6.1 11.5 15.1 11.5 24.6s-4.2 18.5-11.5 24.6l-192 160c-9.5 7.9-22.8 9.7-34.1 4.4s-18.4-16.6-18.4-29l0-64z" />
                                </svg><span class="dashboardNavigationText" >Go to home page</span></div>
                            <div class="dashboardNavigationDiv" id="closeSideNav"
                                 style=" background-color: #00E861;padding: 5px 10px; border-radius: 10px;text-align: center;">
                                <svg xmlns="http://www.w3.org/2000/svg" style="height: 25px; width:25px;"
                                     viewBox="0 0 384 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                <path fill="white"
                                      d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z" />
                                </svg>
                            </div>
                            <!-- <div>hh</div> -->
                        </div>
                        <div class="contact-us-container">
                            <div class="d-flex justify-content-end">
                                <svg xmlns="http://www.w3.org/2000/svg" style="height:25px;"
                                     viewBox=" 0 0 128
                                     512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                <path fill="white"
                                      d="M64 360a56 56 0 1 0 0 112 56 56 0 1 0 0-112zm0-160a56 56 0 1 0 0 112 56 56 0 1 0 0-112zM120 96A56 56 0 1 0 8 96a56 56 0 1 0 112 0z" />
                                </svg>
                            </div>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="43" height="42" viewBox="0 0 43 42"
                                     fill="none">
                                <g clip-path="url(#clip0_18_108)">
                                <path
                                    d="M7.74021 22.6866C9.64734 22.6866 11.2077 21.1262 11.2077 19.2191C11.2077 17.312 9.64734 15.7516 7.74021 15.7516C5.83308 15.7516 4.27269 17.312 4.27269 19.2191C4.27269 21.1262 5.83308 22.6866 7.74021 22.6866ZM9.69936 24.5937C9.05787 24.4897 8.41637 24.4204 7.74021 24.4204C6.02379 24.4204 4.39406 24.7844 2.92036 25.4259C1.63738 25.9807 0.805176 27.229 0.805176 28.6334V31.3554H8.60709V28.564C8.60709 27.125 9.00585 25.7727 9.69936 24.5937ZM35.4803 22.6866C37.3875 22.6866 38.9479 21.1262 38.9479 19.2191C38.9479 17.312 37.3875 15.7516 35.4803 15.7516C33.5732 15.7516 32.0128 17.312 32.0128 19.2191C32.0128 21.1262 33.5732 22.6866 35.4803 22.6866ZM42.4154 28.6334C42.4154 27.229 41.5832 25.9807 40.3002 25.4259C38.8265 24.7844 37.1968 24.4204 35.4803 24.4204C34.8042 24.4204 34.1627 24.4897 33.5212 24.5937C34.2147 25.7727 34.6135 27.125 34.6135 28.564V31.3554H42.4154V28.6334ZM28.9614 23.8135C26.9329 22.912 24.4363 22.2532 21.6103 22.2532C18.7843 22.2532 16.2876 22.9293 14.2591 23.8135C12.3867 24.6457 11.2077 26.5182 11.2077 28.564V31.3554H32.0128V28.564C32.0128 26.5182 30.8339 24.6457 28.9614 23.8135ZM14.7966 27.8879C14.9526 27.4891 15.022 27.2117 16.3743 26.6916C18.0561 26.0328 19.8245 25.7207 21.6103 25.7207C23.396 25.7207 25.1645 26.0328 26.8462 26.6916C28.1812 27.2117 28.2506 27.4891 28.4239 27.8879H14.7966ZM21.6103 14.0178C22.5638 14.0178 23.344 14.798 23.344 15.7516C23.344 16.7051 22.5638 17.4853 21.6103 17.4853C20.6567 17.4853 19.8765 16.7051 19.8765 15.7516C19.8765 14.798 20.6567 14.0178 21.6103 14.0178ZM21.6103 10.5503C18.7322 10.5503 16.409 12.8735 16.409 15.7516C16.409 18.6296 18.7322 20.9528 21.6103 20.9528C24.4883 20.9528 26.8116 18.6296 26.8116 15.7516C26.8116 12.8735 24.4883 10.5503 21.6103 10.5503Z"
                                    fill="white" />
                                </g>

                                </svg>
                            </div>
                            <div>
                                <p style="color: #FFF;
                                   font-family: Poppins;
                                   font-size: 13.87px;
                                   font-style: normal;
                                   font-weight: 600;
                                   line-height: normal;">Contact us</p>
                                <p style="color: rgba(255, 255, 255, 0.40);
                                   font-family: Poppins;
                                   font-size: 10.788px;
                                   font-style: normal;
                                   font-weight: 600;
                                   line-height: normal;">Do you have any issue?</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="d-flex donation-info-main-container">
                        <div class="donation-info-text">Total donated plant : 00</div>
                        <div class="donation-info-text">Total received plant : 00</div>
                        <div class="donation-info-text">Total received Amount : 00</div>
                    </div>
                    <div class="container-fluid" style="margin-top: 20px;">

                        <div class="row ">

                            <div class="col-md-4 dashboard-info-card  ">
                                <div class="donation-card-main-container">
                                    <div class="d-flex">
                                        <div style="flex: 1;">
                                            <p class="donation-date-text">16/07/2003</p>
                                        </div>
                                        <div
                                            style="flex: 1; display: flex; justify-content:flex-end; position: relative;top: -15px;right: 10px;">
                                            <p class="donation-type-text">Donated</p>
                                        </div>
                                    </div>
                                    <div class="donation-amount-text">Donation amount :
                                        290000</div>
                                    <div class="working-status-text" style="">
                                        Working Status :
                                        Completed</div>
                                    <div class="donation-spending-info-container" style="">
                                        <p style="font-size: 16px;">Where we spend your money?</p>
                                        <p style="font-size: 13px; "> adipisicing elit. Sed minima neque
                                            corporis
                                            perspiciatis nostrum quasi libero nemo a, quo nam laboriosam, placeat iure
                                            enim
                                        </p>

                                    </div>

                                </div>


                            </div>
                            <div class="col-md-4 dashboard-info-card ">
                                <div class="donation-card-main-container">
                                    <div class="d-flex">
                                        <div style="flex: 1;">
                                            <p class="donation-date-text">16/07/2003</p>
                                        </div>
                                        <div
                                            style="flex: 1; display: flex; justify-content:flex-end; position: relative;top: -15px;right: 10px;">
                                            <p class="donation-type-text">Donated</p>
                                        </div>
                                    </div>
                                    <div class="donation-amount-text">Donation amount :
                                        290000</div>
                                    <div class="working-status-text" style="">
                                        Working Status :
                                        Completed</div>
                                    <div class="donation-spending-info-container" style="">
                                        <p style="font-size: 16px;">Where we spend your money?</p>
                                        <p style="font-size: 13px; "> adipisicing elit. Sed minima neque
                                            corporis
                                            perspiciatis nostrum quasi libero nemo a, quo nam laboriosam, placeat iure
                                            enim
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4 dashboard-info-card  ">
                                <div class="donation-card-main-container">
                                    <div class="d-flex">
                                        <div style="flex: 1;">
                                            <p class="donation-date-text">16/07/2003</p>
                                        </div>
                                        <div
                                            style="flex: 1; display: flex; justify-content:flex-end; position: relative;top: -15px;right: 10px;">
                                            <p class="donation-type-text">Donated</p>
                                        </div>
                                    </div>
                                    <div class="donation-amount-text">Donation amount :
                                        290000</div>
                                    <div class="working-status-text" style="">
                                        Working Status :
                                        Completed</div>
                                    <div class="donation-spending-info-container" style="">
                                        <p style="font-size: 16px;">Where we spend your money?</p>
                                        <p style="font-size: 13px; "> adipisicing elit. Sed minima neque
                                            corporis
                                            perspiciatis nostrum quasi libero nemo a, quo nam laboriosam, placeat iure
                                            enim Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque ad, nobis
                                            enim numquam ut, dolorum amet nisi quam eligendi quasi veritatis veniam saepe
                                            tenetur sed odio eum placeat eos inventore.
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 20px;">

                            <div class="col-md-4 dashboard-info-card  ">
                                <div class="donation-card-main-container">
                                    <div class="d-flex">
                                        <div style="flex: 1;">
                                            <p class="donation-date-text">16/07/2003</p>
                                        </div>
                                        <div
                                            style="flex: 1; display: flex; justify-content:flex-end; position: relative;top: -15px;right: 10px;">
                                            <p class="donation-type-text">Donated</p>
                                        </div>
                                    </div>
                                    <div class="donation-amount-text">Donation amount :
                                        290000</div>
                                    <div class="working-status-text" style="">
                                        Working Status :
                                        Completed</div>
                                    <div class="donation-spending-info-container" style="">
                                        <p style="font-size: 16px;">Where we spend your money?</p>
                                        <p style="font-size: 13px; "> adipisicing elit. Sed minima neque
                                            corporis
                                            perspiciatis nostrum quasi libero nemo a, quo nam laboriosam, placeat iure
                                            enim
                                        </p>

                                    </div>

                                </div>


                            </div>
                            <div class="col-md-4 dashboard-info-card" >
                                <div class="donation-card-main-container">
                                    <div class="d-flex">
                                        <div style="flex: 1;">
                                            <p class="donation-date-text">16/07/2003</p>
                                        </div>
                                        <div
                                            style="flex: 1; display: flex; justify-content:flex-end; position: relative;top: -15px;right: 10px;">
                                            <p class="donation-type-text">Donated</p>
                                        </div>
                                    </div>
                                    <div class="donation-amount-text">Donation amount :
                                        290000</div>
                                    <div class="working-status-text" style="">
                                        Working Status :
                                        Completed</div>
                                    <div class="donation-spending-info-container" style="">
                                        <p style="font-size: 16px;">Where we spend your money?</p>
                                        <p style="font-size: 13px; "> adipisicing elit. Sed minima neque
                                            corporis
                                            perspiciatis nostrum quasi libero nemo a, quo nam laboriosam, placeat iure
                                            enim Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, inventore
                                            eveniet. Accusantium, quibusdam? Eaque tenetur illo corrupti possimus
                                            voluptatum! Numquam consequuntur ipsa accusantium suscipit repellat culpa qui
                                            dicta exercitationem ducimus? Lorem ipsum dolor sit amet consectetur adipisicing
                                            elit. Unde est maiores possimus accusamus optio deserunt labore at eveniet
                                            voluptas quod quas necessitatibus totam aliquam adipisci, natus sed consequatur
                                            vero hic!
                                        </p>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
                          

            <script>
                const dashboard_mobile = document.querySelector("#dashboard-mobile")
                document.querySelector("#closeSideNav").addEventListener("click", (e) => {
                    dashboard_mobile.style.display = "none";
                })
                document.querySelector("#openNavbar").addEventListener("click", () => {
                    dashboard_mobile.style.display = dashboard_mobile.style.display === "block" ? "none" : "block";
                })
                function checkWidth() {
                    if (window.innerWidth > 782) {
                        dashboard_mobile.style.display = "block";
                    } else {
                        dashboard_mobile.style.display = "none";
                    }
                }

                // Initial check
                checkWidth();

                // Add event listener for window resize
                window.addEventListener('resize', checkWidth);



            </script>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>


</html>