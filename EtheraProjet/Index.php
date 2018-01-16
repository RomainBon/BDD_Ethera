<?
// les identifiant user et password seront a modifié
define( 'DB_NAME', 'EtheraProf' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'root' );
define( 'DB_HOST', 'localhost' );

// connexion à Mysql et la base de données
$pdo = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PASSWORD);
?>

<html lang="fr">
	<head>
  		<meta charset="utf-8">
		    <title>Ethera</title>
	  	<meta name="description" content="Ajouter un nouveau personnage">
	  	<meta name="author" content="MRB">
      <link rel="stylesheet" href="style.css">
	  	<h1>Lier Un aventurier a un joueur</h1>
	</head>

	<body>
    <form method="post" action="Index.php">
			<select name="Joueur">
				<?php
		      $resultsJ=$pdo->query('SELECT * FROM `joueur`');
			    $resultsJ->setFetchMode(PDO::FETCH_OBJ);
          while ($resultJ = $resultsJ->fetch())
          {
            echo "<option>".$resultJ->idJoueur." : ".$resultJ->nom."</option>";
          }
		     ?>
				<option>A</option>
			</select>
			<select name="Aventurier">
				<option>B</option>
        <?php
		      $resultsA=$pdo->query('SELECT * FROM `aventurier`');
			    $resultsA->setFetchMode(PDO::FETCH_OBJ);
          while ($resultA = $resultsA->fetch())
          {
            echo "<option>".$resultA->idJoueur." : ".$resultA->nom."</option>";
          }
		     ?>
			</select>
			<input type="submit" value="Lier" />
    </form>
