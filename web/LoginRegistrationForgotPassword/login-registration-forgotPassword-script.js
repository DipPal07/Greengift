document.addEventListener("DOMContentLoaded", function () {
  let login = document.querySelector("#login");
  let registration = document.querySelector("#registration");
  const showLogin = document.querySelectorAll("#showLogin");
  let showRegistration = document.querySelectorAll("#showRegistration");
  let overly = document.querySelector(".overly");
  let forgotPassword = document.querySelector("#forgotPassword");
  let showForgotPassword = document.querySelector("#showForgotPassword");
  let xlog = document.querySelector("#xlog");
  let xreg = document.querySelector("#xreg");
  let xfor = document.querySelector("#xfor");

  showLogin.forEach((e) => {
    e.addEventListener("click", (e) => {
      e.preventDefault();
      login.style.display = "block";
      overly.classList.add("overlyadd");
    });
  });
  showRegistration.forEach((e) => {
    e.onclick = () => {
      registration.style.display = "block";
      overly.classList.add("overlyadd");
    };
  });

  document.querySelectorAll(".openLogin").forEach((node) => {
    node.addEventListener("click", (e) => {
      e.preventDefault();

      forgotPassword.style.display = "none";
      registration.style.display = "none";
      login.style.display = "block";
    });
  });
  showForgotPassword.onclick = () => {
    login.style.display = "none";
    forgotPassword.style.display = "block";
    overly.classList.add("overlyadd");
  };
  showForgotPassword.onclick = () => {
    login.style.display = "none";

    forgotPassword.style.display = "block";
    overly.classList.add("overlyadd");
  };
  xlog.onclick = () => {
    login.style.display = "none";
    overly.classList.remove("overlyadd");
  };
  xreg.onclick = () => {
    registration.style.display = "none";
    overly.classList.remove("overlyadd");
  };
  xfor.onclick = () => {
    forgotPassword.style.display = "none";
    overly.classList.remove("overlyadd");
  };
});
