import {empty, emailPatron, regularExpresionVeriffier} from './modulo.js';

window.onload = () => {
    let divrange = document.getElementById('valueOfRange');
    let range = document.getElementById('dineroHora');

    let sectionBackground = document.querySelector('.backgroundNiños');
    let select = document.querySelector('#tipoCuidado');

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