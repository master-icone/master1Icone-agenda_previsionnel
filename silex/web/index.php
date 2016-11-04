<?php
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=projet_m1;charset=utf8', 'root', '');
}
catch (Exception $e)
{
		die('Erreur : ' . $e->getMessage());
}
#il faut faire un appel à ça comme dans test.html situé dans le dossier précédent
$app->post('/addPersonnel', function (Request $request) {
    // $request->get("login") permet d'accéder au champ avec la valeur login de ce qui est envoyé en post
	echo 'Insert into Personnel values (\'' . $request->get('login') . '\', \'' . $request->get('pw') . '\', \'' . $request->get('name') . '\', \'' . $request->get('firstname') . '\')';
    echo "<br/><br>";
    return 'Insertion réussi';
});


$app->get('/test', function () use($app,$bdd) {
		
	$req = $bdd->query("SELECT * FROM personnel");
	echo $app->json($req->fetchAll(PDO::FETCH_ASSOC));	
		
		
	$log = 'Tran';
	$pass = 'ESA35IAV4GR';
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
		echo 'OK 1er';
	} else {
		echo 'ERREUR 1er';
	}
	$req->closeCursor();
	return '';
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

$app->run();

