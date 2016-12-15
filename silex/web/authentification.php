<?php

$app->get('/test', function () use($app,$bdd) {
		
	$req = $bdd->query("SELECT * FROM personnel");
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
	return '';
});