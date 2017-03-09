<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use page\ui\PageHtmlBuilder;
	use tmpl\model\TmplModel;
	
	$view = HtmlView::view($view);
	$pageHtml = new PageHtmlBuilder($view);
	 
	$view->useTemplate('template.html', array('showTitle' => false));
?>

<?php $view->panelStart(TmplModel::PANEL_NAME_TOP) ?>
	<div class="jumbotron">
	    <div class="container">
	        <h1><?php $pageHtml->title() ?></h1>
	        <?php $pageHtml->contentItems('hero') ?>
	    </div>
	</div>
<?php $view->panelEnd() ?>
 
<?php $pageHtml->contentItems('main') ?>

<?php $view->panelStart(TmplModel::PANEL_NAME_RIGHT); ?>

	<?php $view->import('\news\view\inc\newsBox.html') ?>
	
<?php $view->panelEnd() ?>