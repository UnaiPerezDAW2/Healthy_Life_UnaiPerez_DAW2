import {empty, emailPatron, regularExpresionVeriffier, telfFijo, telfSmart} from './modulo.js';

let verifiedData;
let submit;
let emailP;
let inputTelf;
let divrange;
let sectionBackground;
let select;
let needToVeriffy;
let logoReload;

let emailInput;
let formacion;
let telf;
let range;
let localidad;
let cuidado;

window.onload = () => {
    //Variables
    submit = document.getElementById('submit');

    emailInput = document.querySelector('#email');
    emailP = document.querySelector('#emailChecked');
    telf = document.querySelector('#numerotelefono');
    inputTelf = document.querySelector('#inputTelf');

    divrange = document.getElementById('valueOfRange');
    range = document.getElementById('dineroHora');

    sectionBackground = document.querySelector('.backgroundNiños');
    select = document.querySelector('#tipoCuidado');

    verifiedData = document.querySelectorAll('.desbloqueoDeBoton');
    needToVeriffy = document.querySelectorAll('.needToVeriffy');

    logoReload = document.querySelector('#logoReload');

    //Nos lleva a la Home Page
    logoReload.addEventListener('click', function(){
        window.location = "/Healthy_Life_UnaiPerez_DAW2/index.html";
    });

    //Cambia de fondo la página según el valor del select de tipo de cuidado
    select.addEventListener('change', function (e) {
        let image = new Image();
        image.src = `img/${select.value}.jpg`;
        sectionBackground.style.backgroundImage = `url(${image.src})`;
        sectionBackground.style.backgroundSize = "cover";
        sectionBackground.style.backgroundRepeat = "no-repeat";
    });

    //Muestra el valor del input range según varías de valor
    divrange.innerHTML = 12;
    range.value = 12;
    range.onchange = () => {
        divrange.innerHTML = range.value;
    }    

    //Valida el input text del correo electrónico.
    emailInput.addEventListener('blur', function(){
        if(!regularExpresionVeriffier(emailInput.value, emailPatron)){
            emailP.classList.add('text-danger');
            emailP.classList.remove('text-success');
            emailInput.style.border = '2px solid red';
            emailInput.classList.remove('desbloqueoDeBoton');
            emailP.innerHTML = "Introduce el corrinputTelfeo electrónico de forma correcta";
        } else {
            emailP.classList.remove('text-danger');
            emailP.classList.add('text-success');
            emailInput.style.border = '2px solid green';
            emailP.innerHTML = "Email correcto ✓";
            emailInput.classList.add('desbloqueoDeBoton');

        }
    });

    //Valida el input text del telefono, similar al de arriba pero usamos otras validaciones.
    telf.addEventListener('blur', function(){
        if(!regularExpresionVeriffier(telf.value, telfFijo) || !regularExpresionVeriffier(telf.value, telfSmart)){
            inputTelf.classList.add('text-danger');
            inputTelf.classList.remove('text-success');
            inputTelf.innerHTML = "Introduce el numero de teléfono de forma correcta";
            telf.style.border = '2px solid red';
            telf.classList.remove('desbloqueoDeBoton');
        } else {
            inputTelf.classList.remove('text-danger');
            inputTelf.classList.add('text-success');
            telf.style.border = '2px solid green';
            inputTelf.innerHTML = "Teléfono correcto ✓";
            telf.classList.add('desbloqueoDeBoton');
        }
    });
    
    //Valida los select y les pone estilos.
    needToVeriffy.forEach(element => {
        element.addEventListener('blur', function(){
            if(empty(element.value)){
                element.style.border = '2px solid red';
                element.classList.remove('desbloqueoDeBoton');
            } else {
                element.style.border = '2px solid green';
                element.classList.add('desbloqueoDeBoton');
            }
        });
    });
}

//Comprueba que todos los inputs son válidos y así desbloquea el botón submit
setInterval(function(){
    verifiedData = document.querySelectorAll('.desbloqueoDeBoton');
    submit = document.getElementById('submit');
    if(verifiedData.length < 5){
        submit.setAttribute('disabled', true);
    } else {
        submit.removeAttribute('disabled');
    }
}, 100);

document.querySelector("#submit").addEventListener('click', function(){
    emailInput = document.querySelector("#email").value;
    telf = document.querySelector("#numerotelefono").value;
    cuidado = document.querySelector("#tipoCuidado").value;
    range = document.querySelector("#dineroHora").value; 
    formacion = document.querySelector("#formacion").value;  
    localidad = document.querySelector('#localidad').value;

    $.ajax({
        url: "/Healthy_Life_UnaiPerez_DAW2/back/Ejecucion.php",
        type: "POST",
        data:{
            email: emailInput,
            telf: telf,
            tipocuidado: cuidado,
            tarifa: range,
            formacion: formacion
        }
    }).done(
        function(res){
            alert(res);
        }
    )
});