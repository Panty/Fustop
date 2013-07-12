{extends file="$THEME/layout.tpl"}
{block name=title}Jouer !{/block}
{block name=body}
<div class="titlenews">Rejoindre le serveur</div>
	<div class="well well-small">
		<center>Vous souhaitez rejoindre la communauté de <b>{$TITLE}</b> et revivre l'aventure des anciens serveurs officiel de <b>Ankama</b> ? Vous trouverez ici toutes les informations qu'il vous faut pour nous rejoindre même si vous n'avez pas encore le jeu.<br><br>
			Si vous n'êtes pas satisfaits de nos services nous vous invitons à vous rendre sur les serveurs officiels, malgré la <b>version 2.0</b>.<br><br>
			<b><u>Etape nº1: Installation du client.</u></b><br><br>
			Téléchargez la version 1.29 de Dofus (seulement si vous n'avez pas déjà le client dofus 1.29) <b><font color="red">est obligatoire</font></b> pour pouvoir accéder au serveur en toute tranquillité.<br><br>
			<a href="{$DOFUS_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
			Après avoir téléchargé le client ci-dessus, veuillez le lancer et suivre les instructions pour mener à bien votre installation.<br><br>
			<b><u>Etape nº2: Lancement du jeu (Installateur)</u></b><br><br>
			<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
			Lancez l'exécutable installateur.exe. Celui-ci vous permettra d'effectuer les dernières mises à jour.
		</center>
</div><br />
{/block}