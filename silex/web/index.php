<?php
ini_set('xdebug.var_display_max_depth', -1);
ini_set('xdebug.var_display_max_children', -1);
ini_set('xdebug.var_display_max_data', -1);

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

#lien nécessaire http://localhost/projetPrevisionnel/silex/web/ ou /silex/web/index.php
$app->get('/', function () {
    return 'Something !';
});

#lien nécessaire http://localhost/projetPrevisionnel/silex/web/index.php/hello
$app->get('/hello', function () {
    return 'Hello!';
});

#exemple lien nécessaire http://localhost/projetPrevisionnel/silex/web/index.php/hello/Simon
$app->get('/hello/{name}', function ($name) use ($app) {
    return 'Hello ' . $app->escape($name);
});

#exemple lien nécessaire http://localhost/projetPrevisionnel/silex/web/index.php/ajouter/name=Guillaume&surname=Hugues&statut=2
$app->get('/ajouter/name={name}&surname={surname}&statut={idStatut}', function ($name,$surname,$idStatut) use ($app) {
    return $app->escape($name) . ' ' . $app->escape($surname) . ' avec l\'id statut ' . $app->escape($idStatut) . ' a bien été ajouté(e)';
});

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
$app->post('/feedback', function (Request $request) {
    $name = $request->get('name');
    $pw = $request->get('pw');
	
	return 'Test pour ' . $name . ' dont le mot de passe est ' . $pw;
});

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
$app->post('/addPersonnel', function (Request $request) {
	// $request->get("login") permet d'accéder au champ avec la valeur login de ce qui est envoyé en post
	echo 'Insert into Personnel values (\'' . $request->get('login') . '\', \'' . $request->get('pw') . '\', \'' . $request->get('name') . '\', \'' . $request->get('firstname') . '\')';
	echo "<br/><br>";
	return 'Insertion réussi';
});

$app->run();
