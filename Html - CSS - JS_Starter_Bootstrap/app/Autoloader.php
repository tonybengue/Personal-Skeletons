<?php
namespace App;

class Autoloader {
	/**
	* Passe la classe à charger avec sa fonction
	*/
	static function register() {
		spl_autoload_register(array(__CLASS__, 'autoload'));
	}
	
	/**
	* Charge les fichiers à require du dossier
	*/
	static function autoload($class) {
		$class = str_replace('__NAMESPACE__', '\\', '', $class);
		$class = str_replace('\\', '/', $class);
		require __DIR__ . '/' . $class . '.php';
	}
}