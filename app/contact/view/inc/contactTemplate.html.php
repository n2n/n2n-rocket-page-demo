<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use tmpl\model\TmplModel;
	use page\ui\PageHtmlBuilder;

	$view = HtmlView::view($this);
	$html = htmlview::html($view); 
	
	$title = $view->getParam('title', false);
	
	$pageHtml = new PageHtmlBuilder($view);
	
	$view->useTemplate('\tmpl\view\template.html', array('title' => $title));
	
	
?>


<?php $view->importContentView() ?>

<?php $view->panelStart(TmplModel::PANEL_NAME_RIGHT) ?>
	
	<?php $pageHtml->contentItems('aside') ?>

<?php $view->panelEnd() ?>

<?php $view->panelStart(TmplModel::PANEL_NAME_BOTTOM) ?>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2695.4765101773924!2d8.727139615626808!3d47.50011057917769!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479a999d365f37e3%3A0x92659c7efd52377d!2sStadthausstrasse+65%2C+8400+Winterthur!5e0!3m2!1sde!2sch!4v1487414120428" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
<?php $view->panelEnd() ?>