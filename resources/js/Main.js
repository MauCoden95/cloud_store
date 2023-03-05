/*Slider banner*/
var swiper = new Swiper(".banner", {
    cssMode: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
    },
    mousewheel: true,
    keyboard: true,
  });



/*Date*/
const textToday = document.querySelector('.today');

const today = new Date();
const days = ["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"];
const months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Junio", "Agost", "Septiembre", "Octubre", "Noviembre", "Deciembre"];
const monthName = months[today.getMonth()];
const dayName = days[today.getDay() - 1];
const day = today.getDate();
const year = today.getFullYear();

textToday.innerHTML = `${dayName} ${day} de ${monthName} del ${year}`;


const hour = document.querySelector('.hour');

function updateTime() {
  const now = new Date();
  const hours = now.getHours().toString().padStart(2, '0');
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  const timeString = `${hours}:${minutes}:${seconds}`;
  document.querySelector('.hour').innerHTML = timeString;
}

setInterval(updateTime, 1000);


