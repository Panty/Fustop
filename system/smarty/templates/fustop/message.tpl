{extends file="$THEME/layout.tpl"}
{block name=title}{$title}{/block}
{block name=body}
	<div class="titlenews">{$title}</div>
	<div class="well well-small">
		{$content}
	</div>
	<br/>
{/block}