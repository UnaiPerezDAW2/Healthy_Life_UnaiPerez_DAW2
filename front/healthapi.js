let news = document.querySelector(".news");
fetch("https://newsdata.io/api/1/news?apikey=pub_72907cda84710b631c72440cb61ab810748a&q=care&category=health").
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