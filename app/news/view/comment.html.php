<?php 
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use news\model\NewsCommentForm;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$formHtml = HtmlView::formHtml($view);
	
	$commentForm = $view->getParam('commentForm');
	$view->assert($commentForm instanceof NewsCommentForm);
	
	$commentArticle = $commentForm->getNewsArticle();
	
	//$title = $html->getText('your_comment') . ' - ' . $commentArticle->getTitle();
	$title = $html->getText('your_comment', array('title' => $commentArticle->getTitle()));
	
	$view->useTemplate('\tmpl\view\template.html', array('title' => $title, 
			'smallContainer' => true));

?>

<?php $formHtml->open($commentForm) ?>
	<div class="form-group <?php $formHtml->outOnError('sender', 'has-danger') ?>">
		<?php $formHtml->label('sender', null, array('class' => 'col-form-label')) ?><br>
		<?php $formHtml->input('sender', array('class' => 'form-control')) ?>
		<?php $formHtml->message('sender', 'div', array('class' => 'form-control-feedback')) ?>
	</div>
	<div class="form-group <?php $formHtml->outOnError('content', 'has-danger') ?>">
		<?php $formHtml->label('content', null, array('class' => 'col-form-label')) ?><br>
		<?php $formHtml->textarea('content', array('class' => 'form-control', 'rows' => '7')) ?>
		<?php $formHtml->message('content', 'div', array('class' => 'form-control-feedback')) ?>
	</div>
	<div class="form-group">
		<!-- with 'getL10nText' the text can also be translated like the labels in the .ini files (check ContactForm model) -->
		<?php $html->linkToController($commentArticle->getUrlPart(), $html->getText('cancel'), 
				array('class' => 'btn btn-secondary')) ?>
		<?php $formHtml->buttonSubmit('save', $view->getL10nText('comment_form_submit_label'), 
				array('class' => 'btn btn-primary', 'role' => 'button')) ?>
	</div>
<?php $formHtml->close() ?>
