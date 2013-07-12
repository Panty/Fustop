{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
{foreach from=$array_news item=news}
				<div class="titlenews">{$news.title}</div>
				<div class="well well-small">
					{$news.content}
				</div>
				<div class="caption"><a href="#" class="btn btn-mini btn-info" disabled><img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png"> <i class="icon-white icon-pencil"></i> Par <b>{$news.author}</b></a></div>
				<br/>
{/foreach}
{/block}