<?php
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
require_once "../bootstrap.php";

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();
/*try
{
	$bdd = new PDO('mysql:host=localhost;dbname=projet_m1;charset=utf8', 'root', '');
}
catch (Exception $e)
{
		die('Erreur : ' . $e->getMessage());
	}//*/

	$app->after(function (Request $request, Response $response) {
		$response->headers->set('Access-Control-Allow-Origin', '*');
	});


#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->get('/obtenirTypeEnseignement', function () use($app,$entityManager){
		$dql = "SELECT te FROM typesEnseignement te";
		$query = $entityManager->createQuery($dql);
	//$query->setMaxResults(30);
		try
		{
			$types = $query->getArrayResult();
		}
		catch(Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}
		return $app->json($types);
	});

#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->get('/listeEnseignants', function () use($app,$entityManager){
		$dql = 'SELECT p.id, p.login, p.nom, p.prenom, IDENTITY(pe.idstatut) as idstatut 
		FROM personnel p, personnelEnseignant pe 
		WHERE EXISTS (SELECT IDENTITY (ppe.id) 
		FROM personnelEnseignant ppe 
		WHERE ppe.id = p.id) 
		AND pe.id = p.id';
		$query = $entityManager->createQuery($dql);
		try
		{
			$professeurs = $query->getArrayResult();
		}
		catch(Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}
		return $app->json($professeurs);
	});

	#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
	$app->get('/{login}/heure', function ($login) use($app,$entityManager){
		$dql = "SELECT IDENTITY(i.idEnseignant) as id, i.nbHeures 
		FROM interventions i, personnel p
		WHERE i.idEnseignant = p.id
		AND p.login = '".$login."'
		GROUP BY i.idEnseignant";
		$query = $entityManager->createQuery($dql);
		try
		{
			$interventions = $query->getArrayResult();
		}
		catch(Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}
		return $app->json($interventions);
	});


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
	$app->delete('/supprimerTypeEnseignement/{id}', function ($id) use($app,$entityManager){
		$dql = "DELETE FROM typesEnseignement te WHERE te.id = " . $id;
		$query = $entityManager->createQuery($dql);
		$types = $query->getArrayResult();
		return $app->json($types);
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
/*
#
$app->post('/{ue}/addResponsable', function (Request $request) use() {
	/*try
	{
		$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		#Requete SQL permettant l'insertion du nouveau personnel
		$sql = $bdd->query("UPDATE UE SET ");
		$bdd->exec($sql);					#Sert à executer l'insertion d'un nouveau personnel  (Provoque une erreur, mais s'execute correctement)
		return "Insertion REUSSIE";
	}
	catch (Exception $e)
	{
		die('Erreur : ' . $e->getMessage());
	}
});


$app->get('/test', function () use($app,$bdd) {
		
	/*$req = $bdd->query("SELECT * FROM personnel");
	//echo $app->json($req->fetchAll(PDO::FETCH_ASSOC));
		var_dump($req->fetchAll(PDO::FETCH_ASSOC));
	return $app->json($req->fetchAll(PDO::FETCH_ASSOC));
		
	$log = 'non,';
	$pass = 'FGX85BGF4IO';
	//Hash le mot de passe de l'utilisateur pour ensuite mettre seulement le hash dans la BDD
	$hash = password_hash($pass,PASSWORD_BCRYPT,['cost' => 13]);
	$sql = $bdd->query("UPDATE personnel SET password='".$hash."' WHERE login='".$log."'");
	
	$req = $bdd->query("SELECT * FROM personnel WHERE login='".$log."'");
	
	while ($donnees = $req->fetch())
	{
	?>
		<p>
		<strong>Nom</strong> : <?php echo $donnees['nom']; ?><br />
		<strong>Prénom</strong> : <?php echo $donnees['prenom']; ?><br />
	   </p>
	<?php
	}
	
	$hashPassDef = $bdd->query("SELECT password FROM personnel WHERE login='".$log."'");
	$donnees = $hashPassDef->fetch();
	if(password_verify($pass, $donnees['password'])) {
		echo 'OK';
	} else {
		echo 'ERREUR';
	}
	$req->closeCursor();
	return '';//
});

$app->get('/listeEnseignants', function() {	
	/*$req = $bdd->query("SELECT p.nom, p.prenom FROM personnel p, personnelenseignant pe  WHERE p.id = pe.id");
	$nombre = 0;
	while ($donnees = $req->fetch())
	{
		$nombre = $nombre + 1;
		?>
		<p><?php echo $nombre; ?> : <?php echo $donnees['nom']; ?> <?php echo $donnees['prenom']?></p><br /><?php
	}
});

$app->get('/autorisation', function() use($app,$bdd) {
	//$log = 'Suspendisse';
	//Requetes pour les autorisations à tester quand les autorisations seront mises en place
	//$req = $bdd->query("SELECT peutModifier, peutAcceder FROM autorisation a, statuts s, personnel p, personnelenseignant pe WHERE p.login = '".$log."' AND p.id = pe.id AND p.statut = s.id AND s.autorisation = a.id");
	//while ($donnees = $req->fetch()) {
	//	echo $donnees['peutModifier'];
	//	echo $donnees['peutAcceder'];
	//}
	$req = $bdd->query("SELECT statut FROM personnel p, personnelenseignant pe WHERE p.login = '".$log."' AND p.id = pe.id");
	$rep = $req->fetch();
	echo $rep['statut'];
	return '';
});*/
/***/
$app->run();

