{extends file="$THEME/layout.tpl"} {block name=title}Enregistrement{/block} 
{block name=body}
{if isset($champs)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
	<div class="well well-small">
		Tous les champs doivent être <b>complétés</b>.<br>
</div><br />
{/if}
{if isset($alreadyused)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
	<div class="well well-small">
		Le <b>nom de compte</b>, le <b>pseudonyme</b> ou <b>l'email</b> est déjà utilisé.<br>
</div><br />
{/if}
{if isset($password)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
	<div class="well well-small">
		Les <b>mots de passe</b> ne correspondent pas.<br>
</div><br />
{/if}
{if isset($mail_invalid)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
	<div class="well well-small">
		L'adresse <b>email</b> est invalide.<br>
</div><br />
{/if}
{if isset($captcha)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
	<div class="well well-small">
		Le <b>captcha</b> entré est incorrect.<br>
</div><br />
{/if}
{if isset($success)}
<div class="titlenews"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> Félicitation !</div>
	<div class="well well-small">
		Votre compte a été <b>créé</b> avec succès.<br>
</div><br />
{/if}
<div class="titlenews">Enregistrement</div>
	<div class="well well-small">
		<form method="post" action="{$URL}index.php/user/register">
			<table>
				<tbody>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/joueur.png"> Nom de compte :
						</td>
						<td width="290">
							<input name="username" id="username" maxlength="32" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/construction.png"> Mot de passe :
						</td>
						<td>
							<input name="password" id="password" maxlength="40" value="" type="password" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/construction.png"> Confirmez votre mot de passe :
						</td>
						<td>
							<input name="password_conf" id="password_conf" maxlength="40" value="" type="password" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Pseudo :
						</td>
						<td>
							<input name="pseudo" id="pseudo" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/email_open.png"> Adresse E-mail :
						</td>
						<td>
							<input name="email" id="email" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/view.png"> Question secrète :
						</td>
						<td>
							<input name="quest" id="quest" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/edit.png"> Réponse secrète :
						</td>
						<td>
							<input name="answ" id="answ" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/ip.png"> Code de sécurité :
						</td>
						<td>
							<input name="captcha" id="captcha" value="" type="text" required> : <img title="" src="{$URL_ASSETS_GLOBAL}captcha.php">
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> C.G.U :
						</td>
						<td>
							<input value="check[]" name="rule" type="checkbox"><a href="{$URL}index.php/server/cgu" required><img title="Attention, lire attentivement &amp; accepter les C.G.U !" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/help.png"></a>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<center>
								<input name="register" class="btn btn-inverse" value="Inscription !" type="submit">
							</center>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
</div><br />
{/block}