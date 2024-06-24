function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

slideIndex = 1;

function plusSlides(n) {
    closeCurSlide();
    showSlides(slideIndex + n);
}

function jumpTo(n)
{
    closeCurSlide();
    showSlides(n);
}

async function showSlides(n) {
    var i, cur;
    var x = document.getElementsByTagName("img");
    document.getElementById("slider").style.display = "flex";

    if (n > x.length) {
        slideIndex = 1;
    }

    else if (n < 1) {
        slideIndex = x.length;
    }

    else {
        slideIndex = n;
    }

    for (i = 1; i <= x.length; i++) {
        x[i - 1].style.display = "none";
    }

    var close = document.getElementById("x");
    close.style.opacity = "1";

    cur = x[slideIndex - 1];
    cur.style.display = "block";
    cur.style.position = "absolute";
    cur.style.height = "60vh";
    cur.style.width = "70vw";
    cur.classList.remove("galleryimg");

    var btn = document.getElementById(slideIndex);
    btn.style.backgroundColor = "rgba(216, 210, 203, 0.8)";
}

async function closeAllSlides() {
    var x = document.getElementsByTagName("img");
    var cur = x[slideIndex - 1];
    var btn;
    cur.style.display = "block";
    cur.style.width = "38vw";
    cur.style.height = "38vh";
    cur.style.position = "static";
    cur.classList.add("galleryimg");

    var close = document.getElementById("x");
    close.style.opacity = "0";

    await sleep(250);

    for (i = 1; i <= x.length; i++) {
        x[i - 1].style.display = "block";
        btn = document.getElementById(i);
        btn.style.backgroundColor = "rgba(237, 237, 237, 0.2)";
    }

    document.getElementById("slider").style.display = "none";
}

function closeCurSlide()
{
    var x = document.getElementsByTagName("img");
    var cur = x[slideIndex - 1];
    cur.style.display = "block";
    cur.style.width = "38vw";
    cur.style.height = "38vh";
    cur.style.position = "static";
    cur.classList.add("galleryimg");
    var btn = document.getElementById(slideIndex);
    btn.style.backgroundColor = "rgba(237, 237, 237, 0.2)";
}
