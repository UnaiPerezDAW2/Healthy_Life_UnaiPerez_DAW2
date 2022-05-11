let divRange;
let btn = document.getElementById('btn');
let btn2 = document.getElementById('btn2');
let divCom;
let range;
let nombre;
let comentario;

window.onload = () => {
    divrange = document.getElementById('divRange');
    divCom = document.getElementById('comentarios');
    range = document.getElementById('valoracion');
    nombre = document.getElementById('nom');
    comentario = document.getElementById('comentario');

    nombre.addEventListener('blur', function(){
        if(nombre.value == ""){
            nombre.style.border = "2px solid red";
            nombre.classList.remove('valido');
        } else {
            nombre.style.border = "2px solid green";
            nombre.classList.add('valido');
        }
    });

    comentario.addEventListener('blur', function(){
        if(comentario.value == ""){
            comentario.style.border = "2px solid red";
            comentario.classList.remove('valido');
        } else {
            comentario.style.border = "2px solid green";
            comentario.classList.add('valido');
        }
    })

    range.onchange = () => {
        divrange.innerHTML = range.value;
    }

    setInterval(function () {
        let valido = document.querySelectorAll('.valido');
        if (valido.length < 2) {
            btn.setAttribute('disabled', true);
        } else {
            btn.removeAttribute('disabled');
        }
    }, 100);
}

btn.addEventListener('click', function(){
    btn.onclick = () => {
        $.ajax({
            url: "/Healthy_Life_UnaiPerez_DAW2/back/Ejecucion3.php",
            type: "POST",
            data: {
                nombre: nombre.value,
                range: range.value,
                comentario: comentario.value
            }
        }).done(function (res) {
            console.log(res);
        });
    }
});