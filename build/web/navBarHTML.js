import login_registration_forgotPassword_html_string from "./LoginRegistrationForgotPassword/login-registration-forgotPassword-html-string.js";
const navBarHTML = ` <nav>

        <ul class='sidebar'>
            <li><a class='navItem'><svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960'
                        width='24px' fill='#e8eaed' onclick='closeside()'>
                        <path
                            d='m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z' />
                    </svg></a></li>
            <li><a href='./index.html' class='navItem'>Home</a></li>
            <li><a href='./approach.html' class='navItem'>Approach</a></li>
            <li><a href='./donate.html' class='navItem'>Donate</a></li>
            <li><a href='./about.html' class='navItem'>About</a></li>
            <li><a href='./contact.html' class='navItem'>Contact</a></li>
            <li class='liBtn' id="showLogin" > <a href='#' class='loginBtn' >Login</a></li>
            <li class='liBtn' id="showRegistration"> <a href='#' class='loginBtn' >Registration</a></li>
            

        </ul>
        <ul>

            <li><a id='logo' href='#'><img src='./assect/logo.png' class='navbarLogo' /></a></li>
            <li class='hideOnMobile'><a href='./index.html' class='navItem'>Home</a></li>
            <li class='hideOnMobile'><a href='./approach.html' class='navItem'>Approach</a></li>
            <li class='hideOnMobile'><a href='./donate.html' class='navItem'>Donate</a></li>
            <li class='hideOnMobile'><a href='./about.html' class='navItem'>About</a></li>
            <li class='hideOnMobile'><a href='./contact.html' class='navItem'>Contact</a></li>
            <li class='hideOnMobile liBtn' id="showLogin"><a href='#' class='loginBtn'>Login</a></li>
            <li class='hideOnMobile liBtn' id="showRegistration"> <a href='#' class='loginBtn'>Registration</a></li>
            <li class='manu-btn'>
                <a href='#' class='navItem'><svg xmlns='http://www.w3.org/2000/svg' height='30px'
                        viewBox='0 -960 960 960' width='30px' fill='#fffff' onclick=mainDivf()>
                        <path d='M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z' />
                    </svg></a>
            </li>
        </ul>

    </nav>
    ${login_registration_forgotPassword_html_string}
`;
export default navBarHTML;
