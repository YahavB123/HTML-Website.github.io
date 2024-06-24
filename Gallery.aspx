<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/gallery.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="imgcontainer">
        <img class="galleryimg" src="./resources/images/gallery/img1.jpg" alt="img1" title="img1" onclick="showSlides(1)"/>
        <img class="galleryimg" src="./resources/images/gallery/img2.png" alt="img2" title="img2" onclick="showSlides(2)"/>
        <img class="galleryimg" src="./resources/images/gallery/img3.png" alt="img3" title="img3" onclick="showSlides(3)"/>
        <img class="galleryimg" src="./resources/images/gallery/img4.jpg" alt="img4" title="img4" onclick="showSlides(4)"/>
        <img class="galleryimg" src="./resources/images/gallery/img5.png" alt="img5" title="img5" onclick="showSlides(5)"/>
        <img class="galleryimg" src="./resources/images/gallery/img6.png" alt="img6" title="img6" onclick="showSlides(6)"/>
        <img class="galleryimg" src="./resources/images/gallery/img7.png" alt="img7" title="img7" onclick="showSlides(7)"/>
        <img class="galleryimg" src="./resources/images/gallery/img8.jpg" alt="img8" title="img8" onclick="showSlides(8)"/>
    </div>

    <p id="x"><button onclick="closeAllSlides()">❌</button></p>

    <div id="slider">
        <button class="prevornext" onclick="plusSlides(-1)">&#10094; Prev</button>
        <button class="prevornext" onclick="plusSlides(1)">Next &#10095;</button>
      
        <div class="break"></div>

        <button id="1" class="jumpto" onclick="jumpTo(1)">1</button>
        <button id="2" class="jupmto" onclick="jumpTo(2)">2</button>
        <button id="3" class="jumpto" onclick="jumpTo(3)">3</button>
        <button id="4" class="jumpto" onclick="jumpTo(4)">4</button>
        <button id="5" class="jumpto" onclick="jumpTo(5)">5</button>
        <button id="6" class="jumpto" onclick="jumpTo(6)">6</button>
        <button id="7" class="jumpto" onclick="jumpTo(7)">7</button>
        <button id="8" class="jupmto" onclick="jumpTo(8)">8</button>
    </div>

    <script src="resources/js/gallery.js" type="text/javascript"></script>
</asp:Content>

