

const booking = document.querySelector("#button-modal-show");
const audio = new Audio("../assets/audios/zelda.mp3");
booking.addEventListener('click', event => {
    audio.play();
});
