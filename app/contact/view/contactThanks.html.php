<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
use n2n\core\N2N;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);

	$view->useTemplate('inc\contactTemplate.html', array('title' => $html->getText('confirm_title')));
?>

<p class="lead">
	<?php $html->text('confirm_text') ?><br /><br />
	<?php $html->out(N2N::getAppConfig()->general()->getPageName()) ?>
</p>