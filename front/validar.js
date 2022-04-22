import {empty, emailPatron, regularExpresionVeriffier} from './modulo.js';

window.onload = () => {
    let divrange = document.getElementById('valueOfRange');
    let range = document.getElementById('dineroHora');

    let sectionBackground = document.querySelector('.backgroundNiños');
    let select = document.querySelector('#tipoCuidado');

    let cookiesModal = document.querySelector('#cookiesModal');
    let modal = document.querySelector('.cookiesModal');

    let verifiedData = document.querySelectorAll('.needToVeriffy');

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
        setTimeout(() => {
            modal.classList.remove('right-5000');
            modal.classList.add('d-none');
        }, 2000);
    });

    verifiedData.forEach(element => {
        element.addEventListener('blur', function(){
            if(empty(element.value)){
                element.style.border = '2px solid red';
            } else {
                element.style.border = '2px solid green';
            }
        });
    });

}

function reload(){
    location.reload;
}