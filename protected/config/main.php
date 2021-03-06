<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Greeny - proizvodnja i čuvanje voća',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool

		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'admin',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),
		// uncomment the following to enable URLs in path-format

		'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'rules'=>array(
                '<controller:(category|slider|banner|album|image|post|promo|menu|categoryimage)>/<action:\w+>'=>'<controller>/<action>',
				'login' => 'site/login',
				'logout' => 'site/logout',
				'setlang/<lang:(sr|en|ru)>' => 'site/setLang',
				'galerija-slika/<album:[0-9a-zA-Z_\-]+>/*' => 'site/galerija_slika',
				'galerija-slika' => 'site/galerija_slika',
				'kontaktirajte-nas' => 'site/contact',
                '<category:[0-9a-zA-Z_\-]+>/<subcategory:[0-9a-zA-Z_\-]+>/*'=>'/site/view/',
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                '<category:[0-9a-zA-Z_\-]+>'=>'/site/view/',
			),
		),


		'db'=>array(
			'connectionString' => 'mysql:host=mysql;dbname=greenyco_zeleni',
			'emulatePrepare' => true,
			'username' => 'greenyco_zeleni',
			'password' => 'dxOV6!{tl.Q;',
			'charset' => 'utf8',
		),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'goolub.igor@gmail.com',
		'contactEmail'=>'greeny@vozd.net',
	),
);