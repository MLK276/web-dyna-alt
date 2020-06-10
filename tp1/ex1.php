<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex1</title>
</head>
<body>
<h1>Informations saisies</h1>
<?php
    // Récupétion de données passées par la méthode GET
    echo "Vous vous appelez bien : ".$_GET["prenom"].chr(10).$_GET["nom"]."<br />";
    echo "Vous avez: ".$_GET["age"]." ans<br />";
?> 
</body>

</html>