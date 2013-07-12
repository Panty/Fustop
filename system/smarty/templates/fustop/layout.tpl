<!DOCTYPE html>
<html lang="fr">
    <head>
		<link rel="stylesheet" href="{$URL_ASSETS}css/common.css" />
		<link href="{$URL_ASSETS}css/bootstrap.css" rel="stylesheet">
        <meta charset="latin-1" />
		<title>{$TITLE} - {block name=title}Default Page Title{/block}</title>
		<link rel="icon" type="image/png" href="{$URL_ASSETS}images/trool.png" />
	</head>
	<body>
	<div id="page">
		<header>
			<div id="logo"><img src="{$URL_ASSETS}images/Biloute.png" width="420" height="250"></img></div>
			<div id="connexion">
			{if isset($smarty.session.logged)}
				<center>
					<img src="{$URL_ASSETS}images/thingy.png"><br/>
					Bienvenue {$smarty.session.pseudo}<br />
					<i>Ce n'est pas vous ? <a href="{$URL}index.php/user/logout">Déconnexion</a></i>
				</center>
			{else}
				Module de connexion<br/>
				<form method="post" action="{$URL}index.php/user/login">
				<input type="text" name="username" class="input input-medium" placeholder="Pseudo" required><br/>
				<input type="password" name="password" class="input input-medium" placeholder="Mot de passe" required><br/>
				<input type="submit" class="btn btn-inverse" value="Connexion">
				</form>
			{/if}
			</div>
		</header>
		<div id="menuh">
			<ul>
				<a href="{$URL}index.php/news/index"><li>Accueil</li></a>
				<a href="{$URL}index.php/server/story"><li>Histoire</li></a>
				<a href="{$URL}index.php/user/register"><li>Inscription</li></a>
				<a href="{$URL}index.php/server/play"><li>Nous rejoindre</li></a>
				<a href="{$URL}index.php/server/staff"><li>L'équipe</li></a>
				<a href="{$URL}index.php/server/ladder"><li>Classement</li></a>
				<a href="{$URL}index.php/server/cgu"><li>Règlement</li></a>
			</ul>
		</div>
		<br/>
		<div id="content">
			<div class="announce">
				{block name=body}{/block}
						</div>
			<br/>
			
			<div class="announce">
				   {$TITLE}&copy;2013  Design par <a href="#">Team Kat</a> - Propulsé par Panty. Tous droits réservés<br/>
		    </div>
		</div>
		<div id="menur">
		{if isset($smarty.session.logged)}
			<div class="titlecat">Gestion de compte</div><br/>
			<ul>
				<li><a href="{$URL}index.php/user/profil">Mon profil</a></li>
				<li><a href="{$URL}index.php/user/tokens">Mes points ({$smarty.session.tokens})</a></li>
				<li><a href="{$URL}index.php/shop/cat/1">Boutique</a></li>
				<li><a href="{$URL}index.php/user/vote">Voter</a></li>
				<li><a href="{$URL}index.php/user/logout">Déconnexion</a></li>
				<img src="{$URL_ASSETS}images/borner-separateur.png">
			</ul>
			<br/>
		{/if}
			<div class="titlecat">Encyclopédie :: Recherche</div><br/>
				<center>
				<form method="post" action="{$URL}index.php/encyclopedia/item">
				<input type="text" name="item" id="item" class="input input-large" placeholder="Nom de l'item à rechercher..." required><br/>
				<input type="submit" class="btn btn-inverse" name="item_post" value="Rechercher">
				</form>
				</center>
			<br/>
		</div>
		<br/>
	</div>
</body>