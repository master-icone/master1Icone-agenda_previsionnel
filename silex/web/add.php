<?php

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->post('/ajouterTypeEnseignement', function (Request $request) {
		try
		{
			$label = $request->get('label');

			$typesEnseignement = new TypesEnseignement();
			$typesEnseignement->setlabel($label);

			$entityManager->persist($typesEnseignement);
			$entityManager->flush();

			echo "Le nouveau type d'enseignement ajouté à l'Id: ".$typesEnseignement->getId()." et le label: " . $typesEnseignement->getlabel() . "\n";

			return "Insertion REUSSIE";
		}
		catch (Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}
	});

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->post('/ajouterTypeEnseignement', function (Request $request) {
		$label = $request->get('label');

		$typesEnseignement = new TypesEnseignement();
		$typesEnseignement->setlabel($label);

		$entityManager->persist($typesEnseignement);
		$entityManager->flush();

		echo "Le nouveau type d'enseignement ajouté à l'Id: ".$typesEnseignement->getId()." et le label: " . $typesEnseignement->getlabel() . "\n";

		return "Insertion REUSSIE";
	});
	
	#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
$app->post('/ajouterTypeEnseignement', function (Request $request) use($app,$entityManager){
	//var_dump($request);
	echo $request;
	$label = $request->get("label");
	echo "label : " . $label . "\n";
	$typesEnseignement = new TypesEnseignement();
	echo "typeSDEnseignement";
	var_dump($typesEnseignement);
	$typesEnseignement->setlabel($label);
	echo "test";
	$entityManager->persist($typesEnseignement);
	echo "test";
	$entityManager->flush();

	echo "Le nouveau type d'enseignement ajouté à l'Id: ".$typesEnseignement->getId()." et le label: " . $typesEnseignement->getlabel() . "\n";
	
	return "Insertion REUSSIE";
});