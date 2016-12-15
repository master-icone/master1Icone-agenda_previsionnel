<?php

$app->put('/{login}/nouveauStatut/{idStatut}', function ($login, $idStatut) use($app,$entityManager){
		$dql = "UPDATE personnelEnseignant pe
		SET pe.idstatut =  '".$idStatut."'
		WHERE EXISTS (SELECT p.login 
					  FROM personnel p 
					  WHERE p.login = '".$login."' 
					  AND p.id = pe.id)";
		$query = $entityManager->createQuery($dql);
		try
		{
			$result = $query->getResult();
		}
		catch(Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}
		return $app->json($result);
	});