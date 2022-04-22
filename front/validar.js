import {empty} from './modulo.js';

window.onload = () => {
    let divrange = document.getElementById('valueOfRange');
    let range = document.getElementById('dineroHora');

    let sectionBackground = document.querySelector('.backgroundNiños');
    let select = document.querySelector('#tipoCuidado');

    let cookiesModal = document.querySelector('#cookiesModal');
    let modal = document.querySelector('.cookiesModal');

    select.addEventListener('change', function (e) {
        let image = new Image();
        image.src = `img/${select.value}.jpg`;
        sectionBackground.style.backgroundImage = `url(${image.src})`;
        sectionBackground.style.backgroundSize = "cover";
        sectionBackground.style.backgroundRepeat = "no-repeat";
    });

    divrange.innerHTML = 12;
    range.value = 12;
    range.onchange = () => {
        divrange.innerHTML = range.value;
    }    

    cookiesModal.addEventListener('click', function(){
        modal.classList.add('right-5000');
    });
}

function reload(){
    location.reload;
}