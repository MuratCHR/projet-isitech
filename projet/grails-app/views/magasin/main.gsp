<%@ page import="projet.MagasinController" %>
<!doctype html>
<html lang="fr" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="assets/images/logo_d2m-removebg.png"/>

    %{--    <asset:stylesheet src="application.css"/>--}%

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>

    <!-- Stylesheet -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <!-- Script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

</head>


<%--
MENU NAVBAR
--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<nav class="navbar navbar-expand-md navbar-light fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="https://i.imgur.com/CjZFczH.png" width="50" height="50" /></a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbarCollapse" style="">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                %{--<li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Accueil</a>
                </li>--]%
                %{--                <li class="nav-item">--}%
                %{--                    <a class="nav-link" href="#">Link</a>--}%
                %{--                </li>--}%
                %{--                <li class="nav-item">--}%
                %{--                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--}%
                %{--                </li>--}%
            </ul>
            <form class="d-flex">
                <a class="btn btn-outline-danger" href="/user/espacePro" type="submit"><b>Vous êtes commerçant ?</b></a>
            </form>
        </div>
    </div>
</nav>


<body>
<div class="container" style="padding-top: 140px;">
    <g:form action="searchBarResult" class="myform">
        <input class="form-control nomMagasin" type="text" aria-label="default input example" value="${nomDuMagasin}" style="text-align: left; font-size: 15px"  name="nomDuMagasin"  placeholder="Nom du magasin">
        <input class="form-control codePostal" type="text" aria-label="default input example" value="${codePostal}" style="text-align: left; font-size: 15px" name="codePostal" placeholder="Code postal">
        <button id="submit-values" class="btn btn-small btn-primary" type="submit">
            <i class="fas fa-search"></i>
        </button>
    </g:form>

    <h3 id="lesMagasinsLesPlusVus" style="padding-top: 60px; text-align: center">Suggestions</h3>
    <div class="col align-content-center">
    <div class="text-center card-deck justify-content-center align-content-center" style="padding-top: 50px;">
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/VkERtHO.png" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">Carrefour Market</h5>

                <p class="card-text">10 Rue Barriere Jaude<br>63000 Clermont Ferrand</p>
                <a href="magasin/show/4" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/ILvVazO.png" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">H&M</h5>
                <p class="card-text">31 Rue de la République<br>69000 Lyon</p>
                <a href="magasin/show/8" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/6OHqhAY.png" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">Carrefour Express</h5>
                <p class="card-text">10 Rue Paul Chenavard<br>69001 Lyon</p>
                <a href="magasin/show/17" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/IWFyVsm.png" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">Carrefour Contact</h5>
                <p class="card-text">4 Pl. Delille<br>63000 Clermont-Ferrand</p>
                <a href="magasin/show/6" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/DG1iw1U.jpg" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">Bimp</h5>
                <p class="card-text">Centre Commercial Jaude<br>2 Rue Giscard de la Tour Fondue<br>63000 Clermont-Ferrand</p>
                <a href="magasin/show/16" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
        <div class="card" style="min-width: 19rem; max-width: 19rem;">
            <img src="https://i.imgur.com/VkERtHO.png" width="300" height="300"  class="card-img-top" alt="Logo du magasin">
            <div class="card-body">
                <h5 class="card-title">Carrefour Market</h5>
                <p class="card-text">16 Rue des Remparts d Ainay<br>69002 Lyon</p>
                <a href="magasin/show/7" class="btn btn-primary">J'y vais !</a>
            </div>
        </div>
    </div>
    </div>
</div>
<div class="footer bg-primary text-white" >
    <!-- Grid container -->
    <div
            class="text-center p-3"
            style="background-color: rgba(0, 0, 0, 0.2)"
    >
        © 2021 Copyright Tous droits réservés
    </div>
    <!-- Copyright -->
</div>
</body>
<!-- Remove the container if you want to extend the Footer to full width. -->

<!-- Footer -->

<!-- Footer -->

<style type="text/css">
footer {
    position:fixed;
    left:0px;
    bottom:0px;
    width:100%;
}


.myform {
    display : flex;
}
</style>
</html>
