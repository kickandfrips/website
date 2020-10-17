function AdidasButtonActive(){
    var nike = document.getElementById('nike');
    var adidas = document.getElementById('adidas');
    var activeadidas = adidas.classList.contains('is-active');
    var activenike = nike.classList.contains('is-active');
    if(activeadidas === false)
        {
            adidas.className = 'menu is-active';
        }
    if(activeadidas === true)
        {
            adidas.className = 'menu';
        }
        if(activenike === true)
        {
        nike.className = 'menu';
        }
}
function NikeButtonActive(){
    var nike = document.getElementById('nike');
    var adidas = document.getElementById('adidas');
    var activeadidas = adidas.classList.contains('is-active');
    var activenike = nike.classList.contains('is-active');
    if(activenike === false)
        {
            nike.className = 'menu is-active';
        }
    if(activenike === true)
        {
            nike.className = 'menu';
        }
    if(activeadidas === true)
    {
        adidas.className = 'menu';
    }
    
}
function HideAdidas() {
    var x = document.getElementById("nikeS");
    var y = document.getElementById("adidasS");
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "none"
    } else {
        x.style.display = "none";
        y.style.display = "block";
    }
    if(y.style.display === "none" && x.style.display === "block")
    {
        y.style.display = "block";
    }
}
function HideNike() {
    var y = document.getElementById("adidasS");
    var x = document.getElementById("nikeS");
    if (y.style.display === "none") {
        y.style.display = "block";
        x.style.display = "none";
    } else {
        y.style.display = "none";
        x.style.display = "block";
    }
    if(x.style.display === "none" && y.style.display === "block")
    {
        x.style.display = "block";
    }
}