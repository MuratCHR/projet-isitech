<%--
  Created by IntelliJ IDEA.
  User: mili1
  Date: 28/08/2021
  Time: 14:15
--%>

<%@ page import="projet.MagasinController" %>
<!doctype html>
<html lang="fr" class="no-js">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <title>Votre QR Code</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <asset:link rel="icon" href="logo_d2m-removebg.png"/>

  %{--    <asset:stylesheet src="application.css"/>--}%

  <!-- Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <!-- Script -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
  <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
  <link href="https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.css" rel="stylesheet">
  <script src="https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.js"></script>
  <style>
  #map { position: absolute; top: 100px; bottom: 0; width: 75%; }
  </style>

</head>


<%--
MENU NAVBAR
--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<nav class="navbar navbar-expand-md navbar-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="../../"><img src="https://i.imgur.com/CjZFczH.png" width="50" height="50" /></a>
    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse" id="navbarCollapse" style="">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">

      </ul>

    </div>
  </div>
</nav>

<body>
  <div class="qrcodeAffichage col justify-content-center text-center card-deck align-content-center">
    <br>
    <br>
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
    <div class="card" style="max-width: 25rem" id="qrcode">
      <div class="card-title">
        <h5>Voici votre QR Code à présenter à l'entrée !</h5>
      </div>
      <div class="card-body">
        <g:if test="${ilya2creneau == true}">
          <script type="text/javascript">
            new QRCode(document.getElementById("qrcode"), "Date de reservation : ${reservationInstance?.dateReservation}\u000A${reservationInstance.idMagasin ? fieldValue(bean: reservationInstance.magasin, field: "nom") : ""}, ${reservationInstance.idMagasin ? fieldValue(bean: reservationInstance.magasin, field: "adresse") : ""} \u000AHoraires : ${premierCreneau?.heureDebut} - ${reservationInstance?.heureFin} \u000ANombre de places : ${reservationInstance?.nbPlace}");
            document.getElementById("dvContainer").setAttribute('value', "pp");
          </script>
        </g:if>
        <g:else>
          <script type="text/javascript">
            new QRCode(document.getElementById("qrcode"), "Date de reservation : ${reservationInstance?.dateReservation}\u000A${reservationInstance.idMagasin ? fieldValue(bean: reservationInstance.magasin, field: "nom") : ""}, ${reservationInstance.idMagasin ? fieldValue(bean: reservationInstance.magasin, field: "adresse") : ""} \u000AHoraires : ${reservationInstance?.heureDebut} - ${reservationInstance?.heureFin} \u000ANombre de places : ${reservationInstance?.nbPlace}");
            document.getElementById("dvContainer").setAttribute('value', "llll");
          </script>
        </g:else>



        <script type="text/javascript">
          var qrcode = new QRCode(document.getElementById("qrcode-2"), {
            text: "https://webisora.com",
            width: 128,
            height: 128,
            colorDark : "#5868bf",
            colorLight : "#ffffff",
            correctLevel : QRCode.CorrectLevel.H
          });
        </script>
      </div>
      <div class="card-footer">
        Screenez le QR Code <i class="fas fa-mobile-alt"></i><br> ou Imprimer / Enregistrer <i class="fas fa-arrow-alt-circle-down"></i>
        <br><button onclick="window.print();"><i class="fas fa-print"></i></button>
      </div>
    </div>

  </div>

</body>
<footer class="text-center text-white bg-primary" >
  <!-- Grid container -->
  <div
          class="text-center p-3"
          style="background-color: rgba(0, 0, 0, 0.2)"
  >
    © 2021 Copyright Tous droits réservés
  </div>
  <!-- Copyright -->
</footer>
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

.qrcodeAffichage {
  padding-top: 100px;
}
</style>
</html>

