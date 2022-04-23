window.onload = () => {

    let cookiesModal = document.querySelector('#cookiesModal');
    let modal = document.querySelector('.cookiesModal');

    cookiesModal.addEventListener('click', function(){
        modal.classList.add('right-5000');
        setTimeout(() => {
            modal.classList.remove('right-5000');
            modal.classList.add('d-none');
        }, 2000);
    });
}