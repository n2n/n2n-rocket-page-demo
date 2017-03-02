<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
use page\ui\PageHtmlBuilder;
use tmpl\model\TmplModel;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	$title = $view->getParam('title', false);
	$smallContainer = $view->getParam('smallContainer', false, false);
	$showTitle = $view->getParam('showTitle', false, true);
	
	if (!$title) {
		$pageHtml = new PageHtmlBuilder($view);
		$title = $pageHtml->getTitle();
	}
	
	
	
	// zähle die Zusatzspalten
	$sideCols = TmplModel::getNumAsideCols($view);
	$mainColClass = TmplModel::getMainColClass($sideCols);
	
	$view->useTemplate('boilerplate.html');
?>

<?php if (!$smallContainer) : ?>
	<?php if ($showTitle): ?>
		<h1 class="display-3"><?php $html->out($title) ?></h1>
	<?php endif ?>
	
	<?php $view->importContentView() ?>
	
<?php else: ?>
	<div class="row">
		<?php if ($view->hasPanel(TmplModel::PANEL_NAME_LEFT)): ?>
			<div class="col-sm-3">
				<?php $view->importPanel(TmplModel::PANEL_NAME_LEFT) ?>
			</div>
		<?php endif ?>
		<div class="<?php $html->out($mainColClass) ?>">
			<?php if ($showTitle): ?>
				<h1 class="display-3"><?php $html->out($title) ?></h1>
			<?php endif ?>
			<?php $view->importContentView() ?>
		</div>
		<?php if ($view->hasPanel(TmplModel::PANEL_NAME_RIGHT)): ?>
			<div class="col-sm-3">
				<?php $view->importPanel(TmplModel::PANEL_NAME_RIGHT) ?>
			</div>
		<?php endif ?>
	</div>
<?php endif ?>
