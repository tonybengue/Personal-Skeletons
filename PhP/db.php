<?php
	function dbConnect(){
    	$servername = "localhost";
	    $dbname = "mvc";
	    $charset = "utf8";
	    $username = "root";
	    $password = "";	

	    try {
	        $bdd = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	        //$bdd = new PDO("mysql:host=$data[0];dbname=$data[1];charset=$data[2]", $data[3], $data[4], array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	    } catch (Exception $e){
	        die('Erreur : ' . $e->getMessage());
	    }

	    // retourne la bdd pour s'en servir
	    return $bdd;
	    
	    // si déclaration de la connexion au serveur à l'extérieur
	    // return array($servername, $dbname, $charset, $username, $password);
    }