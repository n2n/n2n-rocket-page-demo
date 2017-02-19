<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use page\ui\PageHtmlBuilder;
use tmpl\model\TmplModel;
	
	$view = HtmlView::view($view);
	$pageHtml = new PageHtmlBuilder($view);
	
	// returns an HtmlSnippet of the content of all Aside Content Items
	$asidePanel = $pageHtml->getContentItems('aside');
	 
	// smallContainer has the effect, that the page is smaller on big devices for better readability
	$view->useTemplate('template.html', array('title' => $pageHtml->getTitle(), 'smallContainer' => true));
?>
<?php $pageHtml->contentItems('main') ?>

<?php if (!empty($asidePanel->getContents())): ?>
	<?php $view->panelStart(TmplModel::PANEL_NAME_RIGHT) ?>
		<?php $pageHtml->contentItems('aside') ?>
	<?php $view->panelEnd() ?>
<?php endif ?>