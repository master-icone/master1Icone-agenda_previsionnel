<?php

$app->delete('/supprimerTypeEnseignement/{id}', function ($id) use($app,$entityManager){
	$dql = "DELETE FROM typesEnseignement te WHERE te.id = " . $id;
	$query = $entityManager->createQuery($dql);
	$types = $query->getArrayResult();
	return $app->json($types);
});