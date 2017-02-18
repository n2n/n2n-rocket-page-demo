<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use tmpl\model\TmplModel;
	use page\ui\PageHtmlBuilder;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	
	$view->useTemplate('inc\contactTemplate.html'); 
	
?>


Das Formular kommt hierhin


