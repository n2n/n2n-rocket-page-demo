<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use page\ui\PageHtmlBuilder;
	use n2n\core\N2N;
	use page\ui\nav\Nav;
	use n2n\impl\web\ui\view\html\HtmlBuilderMeta;
use tmpl\model\TmplModel;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$pageHtml = new PageHtmlBuilder($view);
	$pageHtml->meta()->applyMeta();
	 
	$html->meta()->addMeta(array('charset' => N2N::CHARSET));
	
	$html->meta()->addCss('css/style.css');

	// CSS File für individuelle Stile
	$html->meta()->addCss('css/styles.css');
				 
?>
<!doctype html>
<html lang="<?php $html->out($request->getN2nLocale()->getId())?>">
    <?php $html->headStart() ?>
    <?php $html->headEnd() ?>
    <?php $html->bodyStart() ?>
        <nav class="navbar navbar-toggleable-sm navbar-dark bg-inverse">
            <?php $html->linkToContext(null, $html->getImageAsset('img/logo.png', 'Logo'),
                    array('class' => 'navbar-brand')) ?>
            <?php $pageHtml->navigation(Nav::home(), array('class' => 'navbar-nav'), null,
                    array('class' => 'nav-item'), array('class' => 'nav-link')) ?>
            <div id="lang-navi">
                <?php $pageHtml->localeSwitch(array('class' => 'nav nav-inline'), array('class' => 'nav-item'),
                        array('class' => 'nav-link')) ?>
            </div>
        </nav>
        
        <?php if ($view->hasPanel(TmplModel::PANEL_NAME_TOP)) : ?>
        	<?php $view->importPanel(TmplModel::PANEL_NAME_TOP) ?>
        <?php endif ?>
    
      	<div class="container">
	        <?php $view->importContentView() ?>
      	</div>
          
        <?php if ($view->hasPanel(TmplModel::PANEL_NAME_BOTTOM)) : ?>
        	<?php $view->importPanel(TmplModel::PANEL_NAME_BOTTOM) ?>
        <?php endif ?>
        
        <footer class="footer bg-inverse text-white">
        	<div class="container">
				Created with love 2017 by n2n.rocks
        	</div>
		</footer>
        
    <?php $html->bodyEnd() ?>
</html>