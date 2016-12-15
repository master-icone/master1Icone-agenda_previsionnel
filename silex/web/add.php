<?php

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->post('/ajouterTypeEnseignement', function (Request $request) use($app,$entityManager){
		$label = $request->get("label");
		$typesEnseignement = new TypesEnseignement();
		$typesEnseignement->setlabel($label);
		$entityManager->persist($typesEnseignement);
		$entityManager->flush();

		return "Le nouveau type d'enseignement ajouté à l'Id: ".$typesEnseignement->getId()." et le label: " . $typesEnseignement->getlabel() . "\n";
	});