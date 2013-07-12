{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>

{block name=body}
	{if isset($badpassword)}
	      <div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div><div class="well well-small">
          Le <b>mot de passe</b> entré ne correspond pas avec le mot de passe du compte.<br>
          </div><br />
	{/if}
	
	{if isset($badconfirm)}
	      <div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div><div class="well well-small">
          Les <b>mots de passe</b> entrés ne sont pas les mêmes.<br>
          </div><br />
	{/if}	
	
	{if isset($pass_changed)}
	      <div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> Félicitation !</div><div class="well well-small">
          Votre mot de passe a été <b>changé</b> avec succès.<br>
          </div><br />
	{/if}	

<div class="titlenews">Mon compte</div>
	<div class="well well-small">
<center>
	<table style="width: 340px;" border="0">
			<tbody>
			<tr>
				<td style="width:150px">Nom de compte : </td>
				<td>{$user_data.account}</td>
			</tr>
			<tr>
				<td style="width:150px">Adresse mail : </td>
				<td>{$user_data.mail}</td>
			</tr>
			<tr>
				<td style="width:150px">Mon pseudo : </td>
				<td>{$user_data.pseudo}</td>
			</tr>

			<tr>
				<td style="width:150px">Nombre de vote : </td>
				<td style="width:150px">{$user_data.nb_votes}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Points disponible : </td>
				<td style="width:150px">{$user_data.tokens}</td>
			</tr>

			<tr>
				<td style="width:150px">Derniere IP :</td>
				<td style="width:150px">{$user_data.last_ip}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Derniere Connection :</td>
				<td style="width:150px">{$user_data.last_co}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Question secrète :</td>
				<td style="width:150px">{$user_data.question}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Compte :</td>
				<td style="width:150px">{$user_data.player_lv}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Connecté :</td>
				<td style="width:150px">{$user_data.connected}</td>
			</tr>		
			</tbody>
	</table>
	</center>
</div><br />	
	
<div class="titlenews">Changement de mot de passe</div>
	<div class="well well-small">
<center>
<table style="width: 400px;" border="0">
<form action="" method="post">
<tr>
<td style="width:250px">Ancien mot de passe :</td>
<td style="width:150px"><input class="input" name="oldpass" value="" type="password" required></td>
</tr>
<tr>
<td style="width:250px">Nouveau mot de passe :</td>
<td style="width:150px"><input class="input" name="pass" value="" type="password" required></td>
</tr>
<tr>
<td style="width:250px">Confirmer le nouveau mot de passe :</td>
<td style="width:150px"><input class="input" name="passconf" value="" type="password" required></td>
</tr>
</table>
<center>
<input class="btn btn-inverse" name="change" value="Changer" type="submit">
</center>
</form>
</center>   
</div><br />	

{/block}
