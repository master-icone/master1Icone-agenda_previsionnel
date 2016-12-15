<?php

$app->delete('/supprimerTypeEnseignement/{id}', function ($id, Request $request) use($app,$entityManager){
		$typesEnseignement = $entityManager->find('typesEnseignement',$id);
		echo "L'enseignement avec l'ID " . $id . " et le label " . $typesEnseignement->getlabel() . " va être supprimé";
		$entityManager->remove($typesEnseignement);
		$entityManager->flush();
		echo "L'enseignement avec l'ID " . $id . " a été supprimé";
		return "suppression réussie";
	});