window.onload = () => {

    let cookiesModal = document.querySelector('#cookiesModal');
    let rejectModal = document.querySelector('#rejectModal');
    let modal = document.querySelector('.cookiesModal');

    let btnWindowChanger = document.querySelector('#btnWindowChanger');

    let spanInCaseReject = document.querySelector('#inCaseReject');

    let logoReload = document.querySelector('#logoReload');

    logoReload.addEventListener('click', function(){
        location.reload();
    });

    cookiesModal.addEventListener('click', function(){
        modal.classList.add('right-5000');
        setTimeout(() => {
            modal.classList.remove('right-5000');
            modal.classList.add('d-none');
        }, 2000);
        btnWindowChanger.addEventListener('click', function(){
            window.location = "/Healthy_Life_UnaiPerez_DAW2/form.html";
        });
    });

    rejectModal.addEventListener('click', function(){
        btnWindowChanger.setAttribute('disabled', true);
        spanInCaseReject.innerHTML = "Recargue la página y acepte los términos de la aplicación para poder acceder a los cuidados";
        modal.classList.add('right-5000');
        setTimeout(() => {
            modal.classList.remove('right-5000');
            modal.classList.add('d-none');
        }, 2000);
    });
}