{extends file="$THEME/layout.tpl"}
{block name=title}Boutique{/block}
{block name=body}
<div class="titlenews">Boutique :: Categories</div>
	<div class="well well-small">
		<center>
			<a href="{$URL}index.php/shop/cat/1"><img src="{$URL_ASSETS}images/cat/chapeau.png"></a>
			<a href="{$URL}index.php/shop/cat/2"><img src="{$URL_ASSETS}images/cat/cape.png"></a>
			<a href="{$URL}index.php/shop/cat/3"><img src="{$URL_ASSETS}images/cat/amulette.png"></a>
			<a href="{$URL}index.php/shop/cat/4"><img src="{$URL_ASSETS}images/cat/anneau.png"></a>
			<a href="{$URL}index.php/shop/cat/5"><img src="{$URL_ASSETS}images/cat/ceinture.png"></a>
			<a href="{$URL}index.php/shop/cat/6"><img src="{$URL_ASSETS}images/cat/botte.png"></a>
			<a href="{$URL}index.php/shop/cat/7"><img src="{$URL_ASSETS}images/cat/arme.png"></a>
			<a href="{$URL}index.php/shop/cat/8"><img src="{$URL_ASSETS}images/cat/bouclier.png"></a>
			<a href="{$URL}index.php/shop/cat/9"><img src="{$URL_ASSETS}images/cat/familier.png"></a>
		</center>
</div><br />
<div class="titlenews">Boutique :: Liste d'objets</div>
	<div class="well well-small">
		{foreach from=$items item=item}
		<div style="margin:auto;width:587px;height:260px;background:url('{$URL_ASSETS}images/Bg_Boutique2.png');">

				<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 10px; margin-left:10px;">{$item.name}</b>
				<b style="float:right;color:#ffffff;font-size:14px;margin-top: 10px; margin-right:10px;">Niv.{$item.level}</b>
				<span style="position:absolute;color:#514a3c;font-size:12px;margin-top: 40px; margin-left:5px;">{$item.pods} pods</span>
				<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 42px; margin-left:265px;">{$item.sold}</b>
				
				<a style="position:absolute; margin-top:37px; margin-left: 496px; width: 88px; height: 28px;" href="{$URL}index.php/shop/item/{$item.id}"></a>
				
				<img style="position:absolute;margin-top: 65px; margin-left: 18px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png">

				<div style="position:absolute; margin-top:65px; margin-left:136px;height:123px; width:450px;overflow-y:scroll;overflow-x:hidden;">
					<p style="margin-top:5px; margin-left:3px;font-size:14px;">{$item.stats}</p>
				</div>
				<div style="position:absolute;color:#514a3c;font-size:14px;margin-top: 191px; margin-left:7px;height:65px; width:575px;">
				<u>
					{if $item.panoplie eq '-1'}Panoplie : Aucune{else}{$item.panoplie}{/if}
				</u><br />
				</div>
		</div>
		<br />
		{/foreach}
</div><br />
{/block}