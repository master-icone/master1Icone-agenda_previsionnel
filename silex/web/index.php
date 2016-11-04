<?php
session_start();
require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

$app->get('/test', function () {
	try
	{
		$bdd = new PDO('mysql:host=localhost;dbname=projet_m1;charset=utf8', 'root', '');
	}
	catch (Exception $e)
	{
			die('Erreur : ' . $e->getMessage());
	}
	
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

$app->run();
