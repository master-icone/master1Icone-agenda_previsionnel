<?php
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
require_once "../bootstrap.php";

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();
try
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
$app->post('/obtenirTypeEnseignement', function (Request $request) {
	$dql = "SELECT * FROM typesEnseignement";

	$query = $entityManager->createQuery($dql);
	$query->setMaxResults(30);
	$types = $query->getResult();

	foreach ($types as $type) {
		echo $type->getlabel() . "\n";
	}
	
	return "bonjour";
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
	try
	{
		$label = $request->get('label');

		$typesEnseignement = new TypesEnseignement();
		$typesEnseignement->setlabel($label);

		$entityManager->persist($typesEnseignement);
		$entityManager->flush();

		echo "Le nouveau type d'enseignement ajouté à l'Id: ".$typesEnseignement->getId()." et le label: " . $typesEnseignement->getlabel() . "\n";
		
		//$bdd = new PDO('mysql:host=localhost;dbname=projet_m1;charset=utf8', 'root', '');
		//$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);								#Signaler l'insertion de nouvelles données
		#permet d'accéder au champ avec la valeur pw (ici)) de ce qui est envoyé en post
		//$pass = $request->get('pw');
		//$hash = password_hash($pass,PASSWORD_BCRYPT,['cost' => 13]);								#Hacher le mot de passe
		
		#Requete SQL permettant l'insertion du nouveau personnel
		//$sql = $bdd->query("INSERT INTO personnel (login, password, nom, prenom, mail) VALUES ('". $request->get('login') . "', '" . $hash . "', '" . $request->get('name') . "', '" . $request->get('firstname') . "', '" . $request->get('mail') ."')");
		//$bdd->exec($sql);					#Sert à executer l'insertion d'un nouveau personnel  (Provoque une erreur, mais s'execute correctement)
		return "Insertion REUSSIE";
	}
	catch (Exception $e)
	{
		die('Erreur : ' . $e->getMessage());
	}
});

#
$app->post('/{ue}/addResponsable', function (Request $request) use($bdd) {
	try
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
		
	$req = $bdd->query("SELECT * FROM personnel");
	//echo $app->json($req->fetchAll(PDO::FETCH_ASSOC));	
	return $app->json($req->fetchAll(PDO::FETCH_ASSOC));
		
	/*$log = 'non,';
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
	return '';//*/
});

$app->get('/listeEnseignants', function() {	
	$req = $bdd->query("SELECT p.nom, p.prenom FROM personnel p, personnelenseignant pe  WHERE p.id = pe.id");
	$nombre = 0;
	while ($donnees = $req->fetch())
	{
		$nombre = $nombre + 1;
		?>
		<p><?php echo $nombre; ?> : <?php echo $donnees['nom']; ?> <?php echo $donnees['prenom']?></p><br /><?php
	}
});

$app->get('/autorisation', function() use($app,$bdd) {
	$log = 'Suspendisse';
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
});

$app->run();

