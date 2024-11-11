function mainDivf() {
  x = document.querySelector(".sidebar");
  x.style.display = "flex";
}
function closeside() {
  x = document.querySelector(".sidebar");
  x.style.display = "none";
}
console.log("hiii");
window.addEventListener("DOMContentLoaded", (e) => {
  document.querySelectorAll(".navItem").forEach((node) => {
    if (document.location.href.match(node.getAttribute("href"))) {
      node.style.backgroundColor = "#009a9d";
    }
  });
});
