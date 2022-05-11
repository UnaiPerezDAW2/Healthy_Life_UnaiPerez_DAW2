let news = document.querySelector(".news");
fetch("https://newsdata.io/api/1/news?apikey=pub_7294658074b1c8d394b2d05e10eccf24b5e4&q=care&category=health").
    then(response => response.json()).then(json => {
        Array.from(json.results).map(element => {
            news.innerHTML += `<div class='ml-auto mr-auto mt-5 col-lg-5 text-dark card'>
            <div>
                <h5>
                    ${element.title}
                </h5>
                <a href="${element.link}">Link de la noticia</a>
            </div>
            </div>`;
        });
    })
    .catch(err => {
        alert("Error");
    });