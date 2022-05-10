window.onload = () => {
    let divrange = document.getElementById('divRange');
    let range = document.getElementById('valoracion');
    let archivo = document.getElementById('arch');
    let nombre = document.getElementById('nom');
    let comentario = document.getElementById('comentario');

    range.onchange = () => {
        divrange.innerHTML = range.value;
    }

    let file = archivo.files[0];

    $.ajax({
        url: "/Healthy_Life_UnaiPerez_DAW2/back/Ejecucion3.php",
        type: "POST",
        data: {
            nombre: nombre,
            range: range,
            comentario: comentario,
            archivo: nombre
        }
    }).done(function (res) {
        console.log(res);
    });
}