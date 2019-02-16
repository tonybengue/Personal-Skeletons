<?php
	function dbConnect(){
		// Variables de connexion
		$servername = "localhost";
		$dbname = "ip_b3";
		$charset = "utf8";
		$username = "root";
		$password = "";
		
		// Connexion
		try {
			$bdd = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
			// Régle les erreurs PDO en exceptions
			$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (Exception $e){
			die('Erreur : ' . $e->getMessage());
		}
		// retourne la bdd pour s'en servir
		return $bdd;
	}
	$bdd = dbConnect();
?>