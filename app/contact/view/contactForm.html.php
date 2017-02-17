<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use tmpl\model\TmplModel;
	use page\ui\PageHtmlBuilder;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	$pageHtml = new PageHtmlBuilder($view);
	
	$view->useTemplate('\tmpl\view\template.html'); 
	
?>


Das Formular kommt hierhin


<?php $view->panelStart(TmplModel::PANEL_NAME_RIGHT) ?>
	
	<?php $pageHtml->contentItems('aside') ?>

<?php $view->panelEnd() ?>