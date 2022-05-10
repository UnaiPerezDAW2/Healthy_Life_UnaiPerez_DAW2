var si = document.querySelector('.si');
var no = document.querySelector('.no');

si.addEventListener('click', function () {
    alert('¡Gracias por su tiempo! Puede darnos feedback de todo :)');
    window.location = "/Healthy_Life_UnaiPerez_DAW2/valorar.html";
});

no.onclick = () => {
    alert('¡Gracias por su tiempo! Le redireccionamos a la página de inicio :)');
    window.location = "/Healthy_Life_UnaiPerez_DAW2/index.html";
}