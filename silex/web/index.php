<?php
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
require_once "../bootstrap.php";

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

include "get.php";
include "add.php";
include "update.php";
include "delete.php";
include "authentification.php";

	$app->after(function (Request $request, Response $response) {
		$response->headers->set('Access-Control-Allow-Origin', '*');
	});

$app->run();

