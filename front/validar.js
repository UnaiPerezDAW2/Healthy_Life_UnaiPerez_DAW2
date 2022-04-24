import {empty, emailPatron, regularExpresionVeriffier} from './modulo.js';

window.onload = () => {
    let contadorDeVerificaciones = 0;
    let submit = document.querySelector('#submit');

    let emailInput = document.querySelector('#email');
    let emailP = document.querySelector('#emailChecked');

    let divrange = document.getElementById('valueOfRange');
    let range = document.getElementById('dineroHora');

    let sectionBackground = document.querySelector('.backgroundNiños');
    let select = document.querySelector('#tipoCuidado');

    let verifiedData = document.querySelectorAll('.needToVeriffy');

    let logoReload = document.querySelector('#logoReload');

    logoReload.addEventListener('click', function(){
        window.location = "../index.html";
    });

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

    emailInput.addEventListener('blur', function(){
        if(!regularExpresionVeriffier(emailInput.value, emailPatron)){
            emailP.classList.add('text-danger');
            emailP.classList.remove('text-success');
            emailP.innerHTML = "Introduce el correo electrónico de forma correcta";
        } else {
            emailP.classList.remove('text-danger');
            emailP.classList.add('text-success');
            emailP.innerHTML = "Email correcto ✓";
        }
    });
    
    verifiedData.forEach(element => {
        element.addEventListener('blur', function(){
            if(empty(element.value)){
                element.style.border = '2px solid red';
            } else {
                element.style.border = '2px solid green';
            }

            if(contadorDeVerificaciones <= 4){
                submit.setAttribute('disabled', true);
            } else {
                submit.setAttribute('disabled', false);
            }
        });
    });

}