<?php

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

#lien nécessaire http://localhost/previsionnel/silex/web/ ou /silex/web/index.php
$app->get('/', function () {
    return 'Something !';
});

#lien nécessaire http://localhost/previsionnel/silex/web/index.php/hello
$app->get('/hello', function () {
    return 'Hello!';
});

#exemple lien nécessaire http://localhost/previsionnel/silex/web/index.php/hello/Simon
$app->get('/hello/{name}', function ($name) use ($app) {
    return 'Hello ' . $app->escape($name);
});

#exemple lien nécessaire http://localhost/previsionnel/silex/web/index.php/ajouter/name=Guillaume&surname=Hugues&statut=2
$app->get('/ajouter/name={name}&surname={surname}&statut={idStatut}', function ($name,$surname,$idStatut) use ($app) {
    return $app->escape($name) . ' ' . $app->escape($surname) . ' avec l\'id statut ' . $app->escape($idStatut) . ' a bien été ajouté(e)';
});

$app->run();
