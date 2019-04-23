<?php
// Appel de l'Autoloader
require 'app/Autoloader.php';
// Chargement de l'Autoloader
App\Autoloader::register();

// Page par défaut
if(isset($_GET['p'])) {
    $p = $_GET['p'];
} else {
    $p = 'home';
}

// Ob_start permet de stocker le contenu dans la variable $content assignée à la fermeture
ob_start();
// Pages
if($p === 'home') {
    require './pages/home.php';
} elseif($p === 'single') {
    require './pages/single.php';
}
$content = ob_get_clean();

require './pages/templates/default.php';
